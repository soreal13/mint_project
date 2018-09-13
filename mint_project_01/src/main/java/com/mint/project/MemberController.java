package com.mint.project;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mint.project.aop.TasteAop;
import com.mint.project.dtos.MovieDto;
import com.mint.project.dtos.TasteDto;
import com.mint.project.dtos.UserDto;
import com.mint.project.service.IUserService;
import com.mint.project.service.MovieServiceImp;
import com.mint.project.service.TasteServiceImp;
import com.mint.project.service.UserServiceImp;

import javax.mail.internet.MimeMessage;

import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger( MemberController.class);
	
	
	@Autowired
	private UserServiceImp userService;
	@Autowired
	private TasteServiceImp tService;
	@Autowired
	private MovieServiceImp mService;
	
   @Autowired
   private JavaMailSender mailSender;
   
	TasteAop taop = new TasteAop();
	
	//로그인 창으로
	@RequestMapping(value="/login.do", method =RequestMethod.GET)
	public String index(Locale locale, Model model) {
		
		return "member/login";
	}
	
	//회원가입
	@RequestMapping(value="/sign.do", method =RequestMethod.POST)
	public @ResponseBody String register(UserDto udto ,Locale locale, Model model) {
		
		TasteDto tdto = new TasteDto();
		String img = "default.png";
		udto.setUimg(img);
		
		boolean isS=userService.register(udto, tdto);
		if(isS) {
			
				return "login.do";
			
		}else {
			model.addAttribute("msg","가입 실패");
			return "member/signin";
		}
	}
	
	//회원가입 창으로
	@RequestMapping(value="/signin.do", method =RequestMethod.GET)
	public String signin(Locale locale, Model model) {
		
		return "member/signin";
	}
	
	//로그인 시도
    @RequestMapping(value="/getin.do")
	   public String login(Locale locale, Model model, UserDto udto,HttpSession session,  HttpServletRequest request) throws Exception {
	   UserDto loginUser = userService.login(udto);
	   System.out.println("로그인창 들어옴");
	        if (loginUser != null) {
	            session.setAttribute("ldto", loginUser);
	            
	          //초기 취향 안했으면 자동으로 초기 취향창으로 인터셉트.
	            TasteDto tdto=tService.getTaste(loginUser.getUseq());
	            if(tdto.getTstatus().equals("N")) {
	            	System.out.println("초기취향 설정안함");
	            	return "taste_init";
	            	
	            } else {
//	            	System.out.println(tdto.toString());
//	            	System.out.println("로그인직전");
//	            	model.addAttribute("tdto", tdto);
//	            	System.out.println("취향 메소드 시작");	        		
//	        		//2. 유저의 취향점수 중 제일 높은 것 뽑아내기(=tdto주고 한글키워드 받아옴)
//	        		String keyw = taop.getKeyw(tdto);
//	        		System.out.println(keyw);
//	        		//3. 키워드로 영화 검색하기
//	        		List<MovieDto> tmlist= mService.getCertainMovieinfo(keyw);
//	        		model.addAttribute("tmlist", tmlist);		
//	            	model.addAttribute("keyw", keyw);
	            	return "redirect:usermain_user.do";
	            }		            
	            
	        } else {
	        	  return "member/login";
	        }
		}
  
    @RequestMapping(value="/findemail.do", method =RequestMethod.GET)
    public String findemail(Locale locale, Model model) {
       
       return "member/find_email";
    }   
     
    
    @RequestMapping(value="/findemail_user.do", method =RequestMethod.POST)
    public String findemail(HttpServletRequest request) {      
       String setfrom = "ejswhp@gmail.com";
       String tomail = request.getParameter("tomail");
       String title = request.getParameter("title");
       String content = request.getParameter("content");
       
       
       try {
             MimeMessage message = mailSender.createMimeMessage();
             MimeMessageHelper messageHelper = new MimeMessageHelper(message,true,"UTF-8");
             messageHelper.setFrom(setfrom);  // 보내는사람 생략하거나 하면 정상작동을 안함
             messageHelper.setTo(tomail);     // 받는사람 이메일
             messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
             messageHelper.setText(content);  // 메일 내용
            
             mailSender.send(message);
           } catch(Exception e){
             System.out.println(e);
           }
       return "/member/login";
    }
	
	//비밀번호 찾기 창으로 
	@RequestMapping(value="/findpwd.do", method =RequestMethod.GET)
	public String findpwd(Locale locale, Model model) {
		
		return "member/find_pwd";
	}
	
	
	   @RequestMapping(value="/findpwd_user.do", method =RequestMethod.GET)
	   public String findpwd_user(HttpServletRequest request) {

	      return "member/login";
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
		Map<String, String>map=new HashMap<String, String>();
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
		Map<String, String>map=new HashMap<String, String>();
		map.put("isS",isS);
		
		return map;
	}
	
}
