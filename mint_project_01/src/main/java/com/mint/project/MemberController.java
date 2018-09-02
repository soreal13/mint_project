package com.mint.project;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mint.project.dtos.UserDto;
import com.mint.project.service.IUserService;


@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger( MemberController.class);
	
	
	@Autowired
	private IUserService userService;
	
	@RequestMapping(value="/login.do", method =RequestMethod.GET)
	public String index(Locale locale, Model model) {
		
		return "member/login";
	}
	
	@RequestMapping(value="/sign.do", method =RequestMethod.POST)
	public String register(UserDto udto ,Locale locale, Model model) {
		
		boolean isS=userService.register(udto);
		if(isS) {
			return "member/login";
		}else {
			model.addAttribute("msg","가입 실패");
			return "member/signin";
		}
	}
	
	@RequestMapping(value="/signin.do", method =RequestMethod.GET)
	public String signin(Locale locale, Model model) {
		
		return "member/signin";
	}
	
    @RequestMapping(value="/getin.do", method =RequestMethod.POST)
    public String login(UserDto udto,HttpSession session) throws Exception {
         UserDto loginUser = userService.login(udto);
         if (loginUser != null) {
             session.setAttribute("udto", loginUser);
             return "user/user_main";
         } else {
              return "member/login";
         }
     }
  
	
		
	 
	
	@RequestMapping(value="/findemail.do", method =RequestMethod.GET)
	public String findemail(Locale locale, Model model) {
		
		return "member/find_email";
	}
	
	@RequestMapping(value="/findpwd.do", method =RequestMethod.GET)
	public String findpwd(Locale locale, Model model) {
		
		return "member/find_pwd";
	}
	
	@ResponseBody //비동기로 다시 원래 페이지로 돌아간다.
	@RequestMapping(value="/emchk.do", method =RequestMethod.POST)
	public Map<String, String> emchk(Locale locale, Model model,String uemail) {
		System.out.println("이메일"+uemail);
		UserDto emachk = userService.chkEmail(uemail);
		String isS="";
		if(emachk != null) {
			isS="n";
		}else {
			isS="y";
		}
		Map<String, String>map=new HashMap<>();
		map.put("isS",isS);
		
		return map;
	}
	
	@ResponseBody //비동기로 다시 원래 페이지로 돌아간다.
	@RequestMapping(value="/nnchk.do", method =RequestMethod.POST)
	public Map<String, String> nnchk(Locale locale, Model model,String unick) {
		System.out.println("별명"+unick);
		UserDto nnachk = userService.chkNick(unick);
		String isS="";
		if(nnachk != null) {
			isS="n";
		}else {
			isS="y";
		}
		Map<String, String>map=new HashMap<>();
		map.put("isS",isS);
		
		return map;
	}
	
}
