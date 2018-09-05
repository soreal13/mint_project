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

import com.mint.project.dtos.MovieDto;
import com.mint.project.dtos.ReviewDto;
import com.mint.project.dtos.UserDto;
import com.mint.project.service.IMovieService;
import com.mint.project.service.IReviewService;
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

   // 홍익작성코드 -->
      
//   로그인창으로 이동 (완료)
      @RequestMapping(value="/login.do", method =RequestMethod.GET)
            public String loginpage(Locale locale, Model model) {
         
               return "member/login";
            }


//      로그인 (완료) - 로그인실패시 alert뜨게 하는법 찾아서 넣기
      @RequestMapping(value="/getin.do", method =RequestMethod.POST)
         public String login1(UserDto udto,HttpSession session) throws Exception {
         UserDto loginUser = userService.login(udto);
              if (loginUser != null) {
                  session.setAttribute("ldto", loginUser);
                  return "user/user_main";
              } else {
                   return "member/login";
              }
         }
       
//   유저메인으로 이동 (완료)
      @RequestMapping(value="/usermain.do", method =RequestMethod.GET)
            public String usermain(HttpSession session, Locale locale, Model model) {

             return "user/user_main";
            }
         
   
   
//   유저 정보 가져오기 (완료)
      @RequestMapping(value="/userinfo.do", method =RequestMethod.GET)
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
       
      
//   리뷰 불러오기XXXXXXXXXXXXXXXXXXXXXXXXXXXXX안됌안됌 (수정중)
      @RequestMapping(value="/userreview.do", method =RequestMethod.GET)
      public String review(UserDto udto, Model model) {
//         List<UserDto> ldto=userService.getUserReview(udto.getUseq());
//         model.addAttribute("ldto", ldto);
         
//         
//         MovieDto mdto=new MovieDto();
//         model.addAttribute("mdto", mdto);
//         
//         ReviewDto rdto = new ReviewDto();
//         model.addAttribute("rdto", rdto);
//         
//         
         
      
//         MovieDto mdto=new MovieDto();
////         model.addAttribute("mdto", mdto);
//         List<ReviewDto> rdto = reviewService.getUserReview(udto.getUseq());
//         model.addAttribute("rdto", rdto);
//
//         ReviewDto rrdto = new ReviewDto();
//         rrdto.getRcontent();
//         
         
         return "user/user_review";
         
   
//         
//         
//         
//         MovieDto mdto = new MovieDto();
//         Map<String, UserDto>map1=new HashMap<>();
//         Map<String, ReviewDto>map2=new HashMap<>();
//         Map<String, MovieDto>map3=new HashMap<>();
//         map1.put("ddto", ddto);
//         map2.put("rdto",rdto);
//         map3.put("mdto",mdto);
      
         
   }

//리뷰 삭제 (수정중)
      @RequestMapping(value="/delRiview.do", method =RequestMethod.GET)
      public String delRiview(HttpSession session, Locale locale, Model model) {
         ReviewDto rdto = new ReviewDto();
         boolean isS=reviewService.delReview(rdto.getRseq());
         if(isS) {
            return "redirect:userreview.do";
         }else {
            model.addAttribute("msg","글삭제실패");
            return "user/user_main";
         }
         
      }
      
      
//   즐겨찾기 정보창으로 이동
      @RequestMapping(value="/user_favoritelist.do", method =RequestMethod.GET)
      public String userupdate(UserDto udto, Locale locale, Model model) {

         return "user/user_favorite";
}
   
//   즐겨찾기 유저,영화 (수정중)
//      @RequestMapping(value="/userfavorite.do", method =RequestMethod.GET)
//      public String uertfavorite(HttpSession session,UserDto udto, Locale locale, Model model) {
//         logger.info("가져와보기{}.", locale);
//         List<UserDto> ddto=userService.getUserFavorite(udto.getUseq());
//      
//         Map<String, UserDto>map=new HashMap<>();
////         map.put("ldto", ddto);
//         return "user/user_favorite";
//}

   
   
}