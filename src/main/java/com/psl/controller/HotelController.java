package com.psl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.psl.beans.Hotel;
import com.psl.service.HotelInfoService;

@Controller
public class HotelController {
	String message = "Hello";
	@Autowired
	HotelInfoService service;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showHome(Model model) {

		System.out.println("in controller");

		// model.addAttribute("variable", 1234);

		return "index";
	}

	@RequestMapping(value = "/{city}", method = RequestMethod.GET)
	public ModelAndView showData(ModelAndView model,
			@PathVariable(value = "city") String city) {
		System.out.println("in search");
		/*
		 * // model.addAttribute("variable", 1234); // List hotelList =
		 * service.getInfoFromDB(city); List hotelList = new
		 * ArrayList<String>();
		 * 
		 * System.out.println(hotelList); model.addAttribute("hotelList",
		 * hotelList); return "index";
		 */
		model.setViewName("index");
		List<Hotel> list = service.getInfoFromDB(city);
		System.out.println(list);
		model.addObject("hotelList", list);

		return model;

	}

	public String getInfoFromDB() {
		return message;

	}

	public String addInfoToDB(Hotel h) {
		return message;

	}
}
