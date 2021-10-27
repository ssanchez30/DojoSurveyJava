package com.sergio.controllers;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DojoSurveyController {

	@RequestMapping(value = "/dojo", method = RequestMethod.GET)
	public String displayMain() {

		return "index.jsp";
	}

	@RequestMapping(value = "/result", method = RequestMethod.POST)
	public String registration(@RequestParam(value = "fName") String fName,
			@RequestParam(value = "genero") String genero, @RequestParam(value = "location") String location,
			@RequestParam(value = "fLanguage") String fLanguage, @RequestParam(value = "hobbies") String[] hobbies,
			@RequestParam(value = "comments") String comments, Model model) {

	
		model.addAttribute("hobbies",hobbies);
		  
		 HashMap<String, String>infoUser = new HashMap<String, String>();
		 infoUser.put("name", fName); infoUser.put("genero", genero);
		 infoUser.put("location", location); infoUser.put("fLanguage", fLanguage);
		 infoUser.put("comments", comments);
		
		 model.addAttribute("infoUser", infoUser);
		 
		 if (fLanguage.equalsIgnoreCase("Java")) {
			 
			 return "JavaPage.jsp";
			 
		 }else {
		
			 return "detalle.jsp";
		 }
		 
		
	}

	@RequestMapping(value = "/detalle", method = RequestMethod.GET)
	public String displayDetail() {

		return "detalle.jsp";
	}

}
