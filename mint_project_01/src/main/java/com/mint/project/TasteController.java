
package com.mint.project;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mint.project.aop.TasteAop;
import com.mint.project.dtos.MovieDto;
import com.mint.project.dtos.StarpointDto;
import com.mint.project.dtos.TasteDto;
import com.mint.project.dtos.UserDto;
import com.mint.project.service.ITasteService;
import com.mint.project.service.MovieServiceImp;
import com.mint.project.service.StarpointServiceImp;
import com.mint.project.service.TasteServiceImp;
import com.mint.project.service.UserServiceImp;
import com.sun.org.apache.xalan.internal.xsltc.runtime.Parameter;

@Controller
public class  TasteController {

	private static final Logger logger = LoggerFactory.getLogger(TasteController.class);
	
	@Autowired
	private TasteServiceImp tService;
	
	@Autowired
	private MovieServiceImp mService;
	
	@Autowired 
	   private StarpointServiceImp sService;
	
	TasteAop taop = new TasteAop();
	
	// <-- 김소진 작성 코드 -->
	
	@RequestMapping(value = "/index.do")
	public String index(Locale locale, Model model, HttpSession session,UserDto udto) {
		logger.info("진짜 인덱스페이지 {}.", locale);
		
		 if(session.getAttribute("ldto")==null) {
	         return "index";
	      } 
		 
  	  UserDto ldto=(UserDto)session.getAttribute("ldto");

	  
	  //소진작성
	  TasteDto tdto=tService.getTaste(ldto.getUseq());
	  model.addAttribute("tdto", tdto);
	
	  TasteAop taop = new TasteAop();
	  String keyw = taop.getKeyw(tdto);
	  List<MovieDto> tmlist= mService.getCertainMovieinfo(keyw, "basic");
	  Collections.shuffle(tmlist);
	  model.addAttribute("tmlist", tmlist);
	  model.addAttribute("keyw", keyw);
	  
			
				
		return "index";
	}
	
	@RequestMapping(value = "/genresearch.do")
	public String search(Locale locale, Model model) {
		logger.info("카테고리 창으로{}.", locale);
				
		return "search";
	}
	
	@RequestMapping(value = "/mintci.do")
	public String ci(Locale locale, Model model) {
		logger.info("ci페이지가기", locale);
				
		return "mint_ci";
	}
	

	

//	@RequestMapping(value="/taste_init.do")
//	public String tasteInit(Locale locale, Model model, HttpSession session) {
//		logger.info("처음 taste 만들기 {}.", locale);
//
//		//		08.28 잘 됨		
//		
//		String tstatus = "N";
//		int tuseq=Integer.parseInt((String)session.getAttribute("useq"));
//		
//		TasteDto tdto=new TasteDto();
//		tdto.setTseq(tuseq);
//		tdto.setTuseq(tuseq);
//		tdto.setTstatus(tstatus);
//		
//		System.out.println(tdto.getTseq());
//		tService.insertTaste(tdto);
//	
//		return "taste_init";
//	}

	
//	회원가입시 혹은 tstatus=n일때 taste 창으로 이동
//	멤버로그인에서 처리함
		@RequestMapping(value="/taste_init.do")
		public String tasteInint2(Locale locale, Model model, HttpSession session) {
			
			return "taste_init";
		}
	

	@ResponseBody
	@RequestMapping(value="/tasteAjax_1.do", method= RequestMethod.POST)	
	public Map<String, MovieDto> tasteAjax(Locale locale, Model model,TasteDto paramDto,HttpServletRequest request, HttpSession session){
		logger.info("ajax처리:초기취향반영", locale);

		System.out.println(paramDto);
		TasteDto tdto=paramDto;		
		System.out.println(tdto);

		//1. 회원번호를 취향테이블에 삽입
//		tdto.setTseq(Integer.parseInt(request.getParameter("userseq")));
//		tdto.setTuseq(Integer.parseInt(request.getParameter("userseq")));
		
//		boolean isS=tService.updateTaste(tdto);
//		if(isS) {			

			//2. 초기영화 불러오기
			MovieDto mdto = mService.getMovieinfo(86);

			Map<String, MovieDto> map= new HashMap<String, MovieDto>();
			map.put("mdto", mdto);

			return map;
			
//		}

//		return null;	
	}

	
	//초기 리뷰 별점 처리
	@ResponseBody
	@RequestMapping(value="/tasteAjax_2.do", method=RequestMethod.POST)
	public Map<String, MovieDto> tasteAjax_2(Locale locale, Model model,HttpServletRequest request, HttpSession session){
		logger.info("ajax처리:초기취향 페이지2", locale);
		
		System.out.println(request.getParameter("mseq"));
		
		int mseq= Integer.parseInt(request.getParameter("mseq"));
		int count= Integer.parseInt(request.getParameter("count"));
		int starpoint= Integer.parseInt(request.getParameter("starpoint"));
		
		
		int useq= Integer.parseInt(request.getParameter("userseq"));

		//별점 입력시, 관심없어요할때(=장르 별점 -2점, 리뷰 추가 x)
		if(starpoint!=-1) {
			//별점환산
			int newstarpoint=taop.scalePoint(starpoint);
			
			//취향반영			
			//1. mseq로 키워드(장르) 알아내기
			 MovieDto mdto= mService.getMovieinfo(mseq);
			 String mkeyw = mdto.getMkeyw();
			 
			 //2. ',' 기준으로 키워드 나누기.
			 String[] keyword= taop.askKeyword(mkeyw);
			 
			//3. 해당 유저의 취향 불러오기
			 TasteDto tdto = tService.getTaste(useq);
			System.out.println("3."+tdto);
			
			//4. 환산 별점 해당유저 취향 키워드에 맞춰서 '더하기'
			tdto= taop.pointToTaste(tdto, keyword, newstarpoint);
			System.out.println("4."+tdto); 			
			
			//5.useq로 userTaste에 점수 가산해 넣기(업데이트, 단 가산하는거 aop로 반영하기)
			//tService.updateTaste(tdto);						 			
			//System.out.println("5."+tdto);
			
			if(starpoint!=-2) {
				//여기서부턴 별점 평가
				//userinfo에 별점평가한 seq 넣기
				//useq, starpoint, mseq
				  StarpointDto sdto= new StarpointDto();
		            sdto.setSgrade(newstarpoint);
		            sdto.setSmseq(mseq);
		            sdto.setSuseq(useq);
		            sService.insertStarpoint(sdto,tdto);
		            System.out.println("별점 들어갔는지 확인");
				
			}
			 			 			 							 
		//안봤어요(그냥 넘어감)
		} else {
			
		}
		
		//공통메소드 다음 영화 리턴 
		
		//뷰에서 카운트 하나씩 추가되어서 왔음, 30개 차례대로 무비 반납.
				
		String [] initnum = {"86", "466", "60", "77", "180", "-1" };
//		"201", "172", "231", "235", "234",
//		"224", "237", "312", "288", "303", "305", "364", "320", "318", "345", 
//		"382", "475", "393", "406", "370", "450", "454", "425", "431", "486", 

		
		int mseq2=Integer.parseInt(initnum[count]);
		
		//마지막 영화가 아닌 경우
		if (mseq2!=-1) {

		MovieDto mdto2 = mService.getMovieinfo(mseq2);
		Map<String, MovieDto> map= new HashMap<String, MovieDto>();
		map.put("mdto", mdto2); 
		
		return map;
		
		//마지막 영화인 경우
		} else {
			System.out.println("-1 들어옴.");
			
			//취향 체크 Y로 변경하여 업데이트
			TasteDto tdtolast = tService.getTaste(useq);
			tdtolast.setTstatus("Y");			//이거 꼭 고쳐라고쳐라
			tService.updateTaste(tdtolast);
			
			//무비seq -1값 주어 js메소드 동작
			MovieDto mdto2 = mService.getMovieinfo(86);
			Map<String, MovieDto> map= new HashMap<String, MovieDto>();
			mdto2.setMseq(-1);
			map.put("mdto", mdto2);
					
			return map;
		}
		
	}
	
	//초기 취향 생성 완료 유저메인페이지로.	
	@RequestMapping(value="/tasteMake.do")
	public String tasteMake(Locale locale, Model model, HttpServletRequest request, HttpSession session) {
		logger.info("초기 취향 생성완료", locale);
		

		return "redirect:usermain_user.do";
	}
	
	
	//차트 api
	@RequestMapping(value="/chartAjax.do")
	public Map<String, TasteDto> chartAjax(Locale locale, Model model, HttpServletRequest request, HttpSession session) {
		logger.info("구글차트 옴", locale);
		
		int tseq = Integer.parseInt(request.getParameter("useq"));
		System.out.println(tseq);
		
		TasteDto tdto = tService.getTaste(tseq);
		System.out.println(tdto.toString());
		
		Map<String, TasteDto> map= new HashMap<String, TasteDto>();
		map.put("tdto", tdto);
		
		return map;
	}

	
	
	//취향추천 영화
	@RequestMapping(value="/yourMovie.do")
	public Map<String, MovieDto> yourMovie(Locale locale, Model model, HttpServletRequest request, HttpSession session){
		logger.info("영화 추천 메소드", locale);
		
		//1. 유저정보 가져오기		
		int tseq = Integer.parseInt(request.getParameter("useq"));
		System.out.println(tseq);
		
		TasteDto tdto = tService.getTaste(tseq);
		
		//2. 유저의 취향점수 중 제일 높은 것 뽑아내기(=tdto주고 한글키워드 받아옴)
		String keyw = taop.getKeyw(tdto);
		
		//3. 키워드로 영화 검색하기
		List<MovieDto> tmlist= mService.getCertainMovieinfo(keyw, "basic");
		model.addAttribute("tmlist", tmlist);		
				
		
		Map<String, MovieDto> map= new HashMap<String, MovieDto>();
				
		return map;
	}
	
	//비슷한 영화
	//비슷한 유저 추천
	
	
	//취향 들고와서 절대값 0에 가장 가까운 것. 
	

	
	
	
}
