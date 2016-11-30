package com.psl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HotelController {

	String message = "Welcome to Spring MVC!";
	 
	@RequestMapping("/hello")
	public String showMessage(Model model){
			//@RequestParam(value = "name", required = false, defaultValue = "World") String name) {
		System.out.println("in controller");
 
		//Model mv = new Model("helloworld");
		model.addAttribute("message1", message);
	//	model.addAttribute("variable", 1234);
		System.out.println("after");
		//mv.addObject("name", name);
		return "index";
	}
}
