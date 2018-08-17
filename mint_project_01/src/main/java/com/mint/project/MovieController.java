package com.mint.project;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class  MovieController {

	private static final Logger logger = LoggerFactory.getLogger( MovieController.class);
	
	
	@RequestMapping(value="/.do", method =RequestMethod.GET)
	public String  Movie(Locale locale, Model model) {
		
		return "Movie";
	}
	
	
}
