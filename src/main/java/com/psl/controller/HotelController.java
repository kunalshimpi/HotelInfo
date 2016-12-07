package com.psl.controller;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.expression.spel.ast.Projection;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.psl.beans.Hotel;
import com.psl.beans.User;
import com.psl.service.HotelInfoService;

@Controller
public class HotelController {
	String message = "Hello";
	@Autowired
	HotelInfoService service;
	
	
	
	/*String imgpath=project.getProperties().getProperty("cimage");*/
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showHome(Model model) {

		//System.out.println("in controller");
		
		// model.addAttribute("variable", 1234);

		return "landingpage";
	}
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String showIndex(Model model) {

		//System.out.println("in controller");
		
		// model.addAttribute("variable", 1234);

		return "index";
	}
/*
	@RequestMapping(value = "/{city}", method = RequestMethod.GET)
	public ModelAndView showData(ModelAndView model,
			@PathVariable(value = "city") String city) {
		//System.out.println("in search");
		
		 * // model.addAttribute("variable", 1234); // List hotelList =
		 * service.getInfoFromDB(city); List hotelList = new
		 * ArrayList<String>();
		 * 
		 * System.out.println(hotelList); model.addAttribute("hotelList",
		 * hotelList); return "index";
		 */
		/*model.setViewName("index");
		List<Hotel> list = service.getInfoFromDB(city);
		System.out.println(list);
		model.addObject("hotelList", list);

		return model;

	}*/

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView displayLogin(HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println("inside display");
		ModelAndView model = new ModelAndView("login");

		Map<String, String> country = new LinkedHashMap<String, String>();
		country.put("US", "United Stated");
		country.put("China", "China");
		country.put("India", "India");

		model.addObject("countryList", country);
		model.addObject("User", new User());
		return model;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginCheck(@ModelAttribute("User") User user) {
		// System.out.println(user);
		ModelAndView model = new ModelAndView("login");
		
		
		if (service.checkLogIn(user)) {
			model.setViewName("index");
			model.addObject("userBool", "true");
			return model;
		} else {
			model.addObject("userBool", "false");
			return model;

		}

	}

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String addUser(@ModelAttribute("User") User user) {
		System.out.println(user);
		if (user.getEmailId() != null) {
			service.addUser(user);
			System.out.println("added");
		} else {
			System.out.println("not added");
		}
		return "redirect:login";
	}

	public String getInfoFromDB() {
		return message;

	}

	public String addInfoToDB(Hotel h) {
		return message;

	}
}
