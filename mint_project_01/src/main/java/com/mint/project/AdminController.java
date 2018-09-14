package com.mint.project;

import java.util.List;
import java.util.Locale;

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
import com.mint.project.service.IStarpointService;
import com.mint.project.service.IUserService;
import com.mint.project.service.UserServiceImp;

@Controller
public class  AdminController {

	private static final Logger logger = LoggerFactory.getLogger( AdminController.class);
	
	
	@RequestMapping(value="/goadmin.do", method =RequestMethod.GET)
	public String Admin(Locale locale, Model model) {
		
		return "admin/admin_main";
	}
	
	@Autowired
	public IMovieService movieServiceImp;
	
	@Autowired
	public IReviewService reviewServiceImp;
	
	@Autowired
	public IStarpointService starpointServiceImp;
	
	@Autowired
	public IUserService userServiceImp;
	 
	//민지작성 코드 시작 --->
	
	 // 영화신규추가
	@RequestMapping(value="/admin_movie_upload.do", method =RequestMethod.POST)
	public String insertMovie(Model model,MovieDto mdto) {
		boolean isS=movieServiceImp.insertMovie(mdto);
		if(isS) {
			return "redirect:movie_info.do?mseq="+mdto.getMseq();
		} else {
			model.addAttribute("msg","글쓰기 실패");
			return "error";
		}
	}

	   // 영화정보수정   
	@RequestMapping(value="/.do", method =RequestMethod.POST)
	public String updateMovie(Model model,MovieDto mdto) {
		boolean isS=movieServiceImp.updateMovie(mdto);
		if(isS) {
			return "redirect:movie_info.do?seq"+mdto.getMseq();
		} else {
			model.addAttribute("msg","글 수정 실패");
			return "error";
		}
	}
	   
	   // 영화삭제
//	@RequestMapping(value="/.do", method =RequestMethod.POST)
//	public String delMovie(Model model,MovieDto mdto) {
//		boolean isS=movieServiceImp.delMovie(mdto.getMseq());
//		if(isS) {
//			return "redirect:home.do";
//		} else {
//			model.addAttribute("msg","글 삭제 실패");
//			return "error";
//		}
//	}
//	
//	
	
	//유저 정보 모두 불러오기
	@RequestMapping(value="/admin_getuser.do", method =RequestMethod.GET)
	public String getUser(Model model, UserDto udto) {
		List<UserDto> ulist=userServiceImp.getAlluserinfo();
		model.addAttribute("ulist", ulist);
		return "admin/admin_getuser";
	}
	//리뷰 정보 모두 불러오기
	@RequestMapping(value="/admin_getreview.do", method =RequestMethod.GET)
	public String getReview(Model model, ReviewDto rdto) {
		List<ReviewDto> rlist=reviewServiceImp.getAllReview();
		model.addAttribute("rlist", rlist);
		return "admin/admin_getreview";
	}
	//유저 강퇴
	@RequestMapping(value="/admin_deluser.do")
	public String delUser(Model model,int useq) {
		boolean isS=userServiceImp.delUser(useq);
		if(isS) {
			return "redirect:admin/admin_getuser";
			
		} else {
			model.addAttribute("msg", "강퇴 실패");
			return "error";
			
		}
	}	
	
	//<---민지작성코드 끝
	
}