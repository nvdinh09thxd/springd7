package spring.controllers;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import spring.models.DanhMucTin;
import spring.models.TinTuc;
import spring.services.DanhMucTinService;
import spring.services.TinTucService;

@Controller
@RequestMapping("anews")
public class AnewsController {

	@Autowired
	private ServletContext servletContext;

	@Autowired
	private DanhMucTinService danhMucTinService;

	@Autowired
	private TinTucService tinTucService;

	List<TinTuc> listTinTuc;

	public AnewsController() {
		super();
		listTinTuc = new ArrayList<>();
	}

	@ModelAttribute
	public void setDanhMucTin(Model model) {
		List<DanhMucTin> listDanhMucTin = danhMucTinService.findAll();
		model.addAttribute("listDanhMucTin", listDanhMucTin);
	}

	@GetMapping("index")
	public String index(Model model) {

		if (model.asMap().get("idTinTucNew") != null) {
			int idTinTucNew = (int) model.asMap().get("idTinTucNew");
			TinTuc tinTucNew = tinTucService.findById(idTinTucNew);
			listTinTuc.add(0, tinTucNew);
		}

		if (listTinTuc.size() == 0) {
			System.out.println(listTinTuc.size());
			listTinTuc = tinTucService.findAll();
		}
		model.addAttribute("listTinTuc", listTinTuc);
		return "anews.index";
	}

	@GetMapping("cat/{catId}")
	public String cat(@PathVariable int catId, Model model) {
		List<TinTuc> listTinTucByCatId = tinTucService.findByCatId(catId);
		model.addAttribute("listTinTucByCatId", listTinTucByCatId);
		DanhMucTin danhMucTin = danhMucTinService.findById(catId);
		model.addAttribute("danhMucTin", danhMucTin);
		return "anews.cat";
	}

	@GetMapping("detail/{id}")
	public String detail(@PathVariable int id, Model model) {
		TinTuc news = tinTucService.findById(id);
		model.addAttribute("news", news);
		return "anews.detail";
	}

	@GetMapping("add")
	public String add(Model model) {
		return "anews.add";
	}

	@PostMapping("add")
	public String add(@RequestParam MultipartFile hinhanh, @RequestParam String tenTinTuc, @RequestParam String moTa,
			@RequestParam String chiTiet, @RequestParam int idDanhMucTin, RedirectAttributes re) {
		String fileName = "";
		if (!hinhanh.isEmpty()) {
			String dirUpload = servletContext.getRealPath("WEB-INF/resources/uploads");
			File fileUpload = new File(dirUpload);
			if (!fileUpload.exists()) {
				fileUpload.mkdirs();
			}
			fileName = hinhanh.getOriginalFilename();
//			Rename file
			fileName = FilenameUtils.getBaseName(fileName) + "_" + System.nanoTime() + "."
					+ FilenameUtils.getExtension(fileName);
			String filePath = dirUpload + File.separator + fileName;
			try {
				hinhanh.transferTo(new File(filePath));
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		TinTuc news = new TinTuc(tenTinTuc, moTa, fileName, chiTiet, idDanhMucTin);
		int idTinTucNew = tinTucService.insertOneRecord(news);
		re.addFlashAttribute("idTinTucNew", idTinTucNew);
		return "redirect:/anews/index";
	}

}
