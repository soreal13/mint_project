package com.mint.project;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.mint.project.dtos.MovieDto;
import com.mint.project.dtos.UserDto;
import com.mint.project.service.IUserService;

import javafx.scene.control.Alert;

@Controller
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private IUserService userService;
	

	   
//	로그인창으로 이동 (완료)
	   @RequestMapping(value="/login.do", method =RequestMethod.GET)
	   	   public String index(Locale locale, Model model) {
	      
		   		return "member/login";
	   		}


//	   로그인 (완료) - 로그인실패시 alert뜨게 하는법 찾아서 넣기
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
	    
//	유저메인으로 이동 (완료)
	   @RequestMapping(value="/usermain.do", method =RequestMethod.GET)
	   		public String usermain(UserDto udto,HttpSession session, Locale locale, Model model) {

		    	return "user/user_main";
	   		}
	   	
	
	
//	유저 정보 가져오기 (완료)
		@RequestMapping(value="/userinfo.do", method =RequestMethod.GET)
			public String userGetInfo(UserDto udto, HttpSession session, Model model) {
				UserDto ddto=userService.getUserinfo(udto);
				model.addAttribute("dto",ddto);
				return "user/user_myinfo";
			}
	
//	유저 정보 수정페이지로 이동 (완료)
		@RequestMapping(value="/user_updateform.do", method =RequestMethod.GET)
			public String userUpdateForm(UserDto udto, HttpSession session, Locale locale, Model model) {
				UserDto ddto=userService.getUserinfo(udto);
				model.addAttribute("udto",ddto);
				return "user/user_update";
			}
	
	
//	회원정보수정 (완료-but 닉넴 중복체크 해야함 )
		@RequestMapping(value = "/userupdate.do", method = RequestMethod.POST)
			public String updateUser(String unick, String upwd, HttpSession session, Locale locale, Model model) throws Exception{
				UserDto loginUser = (UserDto)session.getAttribute("udto");
				loginUser.setUnick(unick);
				loginUser.setUpwd(upwd);
       
				userService.updateUserinfo(loginUser);
				System.out.println("성공일까?");
	       
				return "user/user_myinfo";
	        
			}					
		
//	회원탈퇴 (완료)
	
		@RequestMapping(value="/deluser.do", method=RequestMethod.GET)
			public String bye(int useq,HttpSession session,Model model) {
				boolean isS=userService.delUser(useq);
					if(isS) {
						return "redirect:login.do";
					}else {
						model.addAttribute("msg","글삭제실패");
						return "user/user_main";
					}
			}
	    
		
		@RequestMapping(value="/userreview.do", method =RequestMethod.GET)
		public String review(HttpSession session,UserDto udto,int useq, Locale locale, Model model) {
			UserDto ddto=(UserDto)userService.getUserReview(udto.getUseq());
			Map<String, UserDto>map=new HashMap<>();
			map.put("ddto", udto);
			return "user/user_review";
	}


		
		
		
		
		
		

	@RequestMapping(value="/user_favoritelist.do", method =RequestMethod.GET)
	public String userupdate(UserDto udto, Locale locale, Model model) {
//		즐겨찾기 창으로 이동~~
	return "user/user_favorite";
}
	
	@RequestMapping(value="/userfavorite.do", method =RequestMethod.GET)
	public String uertfavorite(HttpSession session,UserDto udto, Locale locale, Model model) {
		logger.info("가져와보기{}.", locale);
		UserDto ddto=userService.getUserFavorite(udto.getUseq());
		
		Map<String, UserDto>map=new HashMap<>();
		map.put("dto", ddto);
		return "user/user_favorite";
}

	
	
}
