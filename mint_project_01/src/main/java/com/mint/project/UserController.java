package com.mint.project;


import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mint.project.aop.TasteAop;
import com.mint.project.dtos.MovieDto;
import com.mint.project.dtos.ReviewDto;
import com.mint.project.dtos.TasteDto;
import com.mint.project.dtos.UserDto;
import com.mint.project.service.IMovieService;
import com.mint.project.service.IReviewService;
import com.mint.project.service.ITasteService;
import com.mint.project.service.IUserService;


@Controller
public class UserController {

   private static final Logger logger = LoggerFactory.getLogger(UserController.class);
   
   @Autowired
   private IUserService userService;
   @Autowired
   private IReviewService reviewService;
   @Autowired
   private IMovieService movieService;
   @Autowired
   private ITasteService tasteService;

   // 홍익작성코드 -->
 
   
   
//   유저메인으로 이동 (완료)
      @RequestMapping(value="/usermain_user.do", method =RequestMethod.GET)
            public String usermain(HttpSession session,UserDto udto, Model model) {
    	  UserDto ldto=(UserDto)session.getAttribute("ldto");
//      	  model.addAttribute("ldto", ldto);

    	  
    	  List<UserDto>lldto=userService.getUserReview(ldto.getUseq());
          model.addAttribute("lldto", lldto);
          
          //소진작성
          TasteDto tdto=tasteService.getTaste(ldto.getUseq());
          model.addAttribute("tdto", tdto);

          TasteAop taop = new TasteAop();
          String keyw = taop.getKeyw(tdto);
          List<MovieDto> tmlist= movieService.getCertainMovieinfo(keyw);
          
          model.addAttribute("tmlist", tmlist);
          model.addAttribute("keyw", keyw);
          
          
             return "user/user_main";
            }
         
   
   
//   유저 정보 가져오기 (완료)
      @RequestMapping(value="/userinfo_user.do", method =RequestMethod.GET)
         public String userGetInfo(HttpSession session, Model model) {
         UserDto lldto=(UserDto)session.getAttribute("ldto");
         UserDto ldto=userService.getUserinfo(lldto);
            model.addAttribute("ldto",ldto);
            return "user/user_myinfo";
         }
   
//   유저 정보 수정페이지로 이동 (완료)
      @RequestMapping(value="/user_updateform.do", method =RequestMethod.GET)
         public String userUpdateForm(UserDto udto, HttpSession session, Locale locale, Model model) {
            UserDto ddto=userService.getUserinfo(udto);
            model.addAttribute("ldto",ddto);
            return "user/user_update";
         }
   
   
//   회원정보수정 (완료-but 닉넴 중복체크 해야함 )
      @RequestMapping(value = "/userupdate.do", method = RequestMethod.POST)
         public String updateUser(String unick, String upwd, HttpSession session, Locale locale, Model model) throws Exception{
            UserDto loginUser = (UserDto)session.getAttribute("udto");
            loginUser.setUnick(unick);
            loginUser.setUpwd(upwd);
       
            userService.updateUserinfo(loginUser);
            System.out.println("성공일까?");
          
            return "user/user_myinfo";
           
         }               
      
//   회원탈퇴 (완료)
   
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
       
      
//   리뷰 불러오기(완료_개 힘들었네 ㅂㄷㅂㄷ)
      @RequestMapping(value="/userreview.do", method =RequestMethod.GET)
      public String review(UserDto udto, Model model) {
    	  
    	  List<UserDto>ldto=userService.getUserReview(udto.getUseq());
    	  
          model.addAttribute("lists", ldto);
          System.out.println(ldto.size());
          
          return "user/user_review";

      
         
   }

//리뷰 삭제 (수정중)
      @RequestMapping(value="/delReview.do?", method =RequestMethod.POST)
      public String delRiview(HttpSession session,int rseq,Model model) {
    	  boolean isS = reviewService.delReview(rseq);
    	  if(isS) {
              return "userreview.do";
           }else {
              model.addAttribute("msg","글삭제실패");
             return "user/user_main";
          }
      }
      
//추천영화 모아보기
      @RequestMapping(value="/usergrade.do", method =RequestMethod.GET)
      public String 추천천영화(UserDto udto, Model model) {
    	  
          return "user/user_grade";
   }

      
      
      
//   즐겨찾기 정보창으로 이동
      @RequestMapping(value="/user_favoritelist.do", method =RequestMethod.GET)
      public String userupdate(UserDto udto, Locale locale, Model model) {

         return "user/user_favorite";
      }
   

//	  즐겨찾기 영화 (수정중)
	      @RequestMapping(value="/userfavoriteMovie.do", method =RequestMethod.GET)
	      public String uerfavoriteMovie(HttpSession session,UserDto udto, Model model) {
	    	  
	    	  List<UserDto>ldto=userService.getFavoriteMovie(udto.getUseq());
	    	  
	          model.addAttribute("lists", ldto);
	          System.out.println(ldto.size());
	    	  
	    	  
	         return "user/user_favorite";
	}
   
   

}