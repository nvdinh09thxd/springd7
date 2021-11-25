package spring.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.models.DanhMucTin;
import spring.services.DanhMucTinService;

@Controller
@RequestMapping("anews")
public class AnewsController {

	@Autowired
	private DanhMucTinService danhMucTinService;

	@ModelAttribute
	public void setDanhMucTin(Model model) {
		List<DanhMucTin> listDanhMucTin = danhMucTinService.findAll();
		model.addAttribute("listDanhMucTin", listDanhMucTin);
	}

	@GetMapping("index")
	public String index() {
		return "anews.index";
	}

	@GetMapping("cat")
	public String cat() {
		return "anews.cat";
	}

	@GetMapping("detail")
	public String detail() {
		return "anews.detail";
	}

	@GetMapping("add")
	public String add() {
		return "anews.add";
	}

}
