package spring.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.models.DanhMucTin;
import spring.models.TinTuc;
import spring.services.DanhMucTinService;
import spring.services.TinTucService;

@Controller
@RequestMapping("anews")
public class AnewsController {

	@Autowired
	private DanhMucTinService danhMucTinService;
	
	@Autowired
	private TinTucService tinTucService;

	@ModelAttribute
	public void setDanhMucTin(Model model) {
		List<DanhMucTin> listDanhMucTin = danhMucTinService.findAll();
		model.addAttribute("listDanhMucTin", listDanhMucTin);
	}

	@GetMapping("index")
	public String index(Model model) {
		List<TinTuc> listTinTuc = tinTucService.findAll();
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
	public String detail(@PathVariable int id,Model model) {
		TinTuc news = tinTucService.findById(id);
		model.addAttribute("news", news);
		return "anews.detail";
	}

	@GetMapping("add")
	public String add() {
		return "anews.add";
	}

}
