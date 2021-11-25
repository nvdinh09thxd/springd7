package spring.controllers;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DemoController {
	
	@Autowired
	DataSource dataSource;

	@GetMapping("demo")
	@ResponseBody
	public String demo() {
		System.out.println(dataSource);
		return "hello";
	}
}
