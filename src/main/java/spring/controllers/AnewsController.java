package spring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("anews")
public class AnewsController {

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
