package com.mint.project;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	
	@RequestMapping(value="/user.do", method =RequestMethod.GET)
	public String user(Locale locale, Model model) {
		
		return "user";
	}
	
	
}
