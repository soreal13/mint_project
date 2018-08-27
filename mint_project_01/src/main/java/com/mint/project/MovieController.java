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
import com.mint.project.service.IMovieService;

@Controller
public class  MovieController {

	private static final Logger logger = LoggerFactory.getLogger( MovieController.class);
	
	@Autowired
	public IMovieService movieServiceImp;
	
	@RequestMapping(value="/.do", method =RequestMethod.GET)
	public String  Movie(Locale locale, Model model) {
		
		return "Movie";
	}
	//Medel : request.setAttribute("list", list)
	//dispatch.foward(url)
	//객체를 전달할때 사용: addAttribute()
	
	   // 영화한편정보
	@RequestMapping(value="/movie_info.do", method =RequestMethod.GET)
	public String getMovieinfo(Model model, int mseq) {
		MovieDto mdto=movieServiceImp.getMovieinfo(mseq);
		model.addAttribute("mdto", mdto);
		return "getMovieinfo";
		
	};
	   
	   // 특정 영화 정보(검색)
	public String getCertainMovieinfo(Model model){
		
		
		return null;
		
	};
	    
	   // 영화전체정보
	@RequestMapping(value="/movie_info.do", method =RequestMethod.GET)
	public String getAllMovieinfo(Model model){
		List<MovieDto> mlist=movieServiceImp.getAllMovieinfo();
		model.addAttribute("mlist", mlist);
		return "getAllMovieinfo";
		
	};
	
	 // 영화신규추가
	public String insertMovie(Model model,MovieDto mdto) {
		return null;
	}

	   // 영화정보수정   
	public String updateMovie(Model model,MovieDto mdto) {
		return null;
	}
	   
	   // 영화삭제
	public String delMovie(Model model,int mseq) {
		return null;
	}
	   
	//팔로우
	public String updateFollow(Model model,int useq) {
		return null;
	}
	   
	   //팔로우 했는지 확인
	public String chkFollow(Model model,int useq) {
		return null;
	}
	   
	   //팔로우 삭제
	public String delFollow(Model model,int useq) {
		return null;
	}
}
