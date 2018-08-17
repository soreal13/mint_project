package com.mint.project;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger( MemberController.class);
	
	
	@RequestMapping(value="/member.do", method =RequestMethod.GET)
	public String Member(Locale locale, Model model) {
		
		return "Member";
	}
	
	
}
