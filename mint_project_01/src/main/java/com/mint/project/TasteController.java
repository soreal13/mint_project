
package com.mint.project;

import java.sql.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import com.mint.project.dtos.MovieDto;
import com.mint.project.dtos.TasteDto;
import com.mint.project.service.ITasteService;
import com.mint.project.service.MovieServiceImp;

@Controller
public class  TasteController {

	private static final Logger logger = LoggerFactory.getLogger(TasteController.class);
	
	@Autowired
	private ITasteService tService;
	
	@Autowired
	private MovieServiceImp mService;
	
		
	
	@RequestMapping(value="/taste.do", method =RequestMethod.GET)
	public String taste(Locale locale, Model model) {
		
		return "taste";
	}
	
	//처음 취향창 갈 때 취향 칼럼 생성. useq=tseq
	@RequestMapping(value="/taste_init.do")
	public String tasteInit(Locale locale, Model model) {
		logger.info("처음 taste 만들기 {}.", locale);

		// 지우면 안됨
		//		08.28 잘 됨		
//		System.out.println("들어옴");
//		String tstatus = "N";
//		int tuseq=1;
//		
//		TasteDto tdto=new TasteDto();
//		tdto.setTseq(tuseq);
//		tdto.setTuseq(tuseq);
//		tdto.setTstatus(tstatus);
//		
//		System.out.println(tdto.getTseq());
//		
//		tService.insertTaste(tdto);
	
		return "taste_init2";
	}

	
	//회원가입시 혹은 tstatus=n일때 taste 창으로 이동
	//로그인 컨트롤러에서 if tstatus=n 이거나 없으면 이쪽으로 오게 수정할 것.
		@RequestMapping(value="/taste_init2.do")
		public String tasteInint2(Locale locale, Model model) {
			
			return "taste_init";
		}
	

	@ResponseBody
	@RequestMapping(value="tasteAjax_1.do", method= RequestMethod.POST)
	public Map<String, MovieDto> tasteAjax(Locale locale, Model model,TasteDto paramDto){
		logger.info("ajax처리:초기취향반영", locale);

		System.out.println(paramDto);
		TasteDto tdto=paramDto;		
		System.out.println(tdto);

		//테스트
		tdto.setTseq(1);
		tdto.setTuseq(1);
		tdto.setTstatus("N");
		
		boolean isS=tService.updateTaste(tdto);
		if(isS) {			

			//2. 초기영화 불러오기
//			TasteAop top = new TasteAop();
//			HashMap<String, MovieSet> initset = top.initTasteMovie();  //Aop로 가서 맵으로 받아옴
			
//			ArrayList<MovieDto> initmovie = new ArrayList<MovieDto>();			
//			ArrayList<GenreDto> initgenre = new ArrayList<GenreDto>();
			
			//값 풀어놓을 세팅
//			MovieDto initmovie = new MovieDto();
//			GenreDto initgenre = new GenreDto();
//			HashMap<MovieDto, GenreDto> mtmap = new HashMap<>();
			

			//2. 그냥 여기서 풀어서 쓰기			
//			String [] initnum = {"86", "466", "60", "77", "180", "201", "172", "231", "235", "234",
//					"224", "237", "312", "288", "303", "305", "364", "320", "318", "345", 
//					"382", "475", "393", "406", "370", "450", "454", "425", "431", "486"} ;
//			
//			MovieDto initmovie = new MovieDto();
//			GenreDto initgenre = new GenreDto();
//			
//			HashMap<String, MovieDto> initmap = new HashMap<>();
//			
//			for(int i=0; i<initnum.length; i++) {
//				
//				initmovie=mService.getMovieinfo(Integer.parseInt(initnum[i]));
//				//initgenre=gService.getGenre(Integer.parseInt(initnum[i]));
//							
//				initmap.put(initnum[i], initmovie);
//		

			//3. 하나씩 들고오기 걍			
			MovieDto mdto = mService.getMovieinfo(86);
			System.out.println(mdto.getMsummary());
			Map<String, MovieDto> map= new HashMap<>();
			map.put("mdto", mdto);

			return map;
			
//			}
//			
//			return initmap;	

		}
		//else 처리 일단 뺌.
		return null;	
	}
	
	//초기 리뷰 별점 처리
	@ResponseBody
	@RequestMapping(value="tasteAjax_2.do", method= RequestMethod.POST)
	public Map<String, MovieDto> tasteAjax_2(Locale locale, Model model, int count, int starpoint, int mseq){
		logger.info("ajax처리:초기취향 페이지2", locale);
		
		//mseq로 영화정보랑 장르정보 가져오기
		 MovieDto mdto= mService.getMovieinfo(mseq);
		 
		//별점 평가하기 movietable에 평균별점 나오게 넣기..? 어케하지 흠
		 
		//userinfo에 별점평가한 seq 넣기
		 
		//useq로 userTaste에 점수 가산해 넣기(업데이트, 단 가산하는거 aop로 반영하기)
		 
		 
		 
		
		//취향에 반영(취향 로직) -> aop로? 일단 여기에 짜기.
		 
		//취향을 알려면 mseq로 
		

		//뷰에서 카운트 하나씩 추가, 30개 차례대로 무비 반납.
		String [] initnum = {"86", "466", "60", "77", "180", "201", "172", "231", "235", "234",
		"224", "237", "312", "288", "303", "305", "364", "320", "318", "345", 
		"382", "475", "393", "406", "370", "450", "454", "425", "431", "486" };		
		
		MovieDto mdto2 = mService.getMovieinfo(count);
		Map<String, MovieDto> map = new HashMap<>();
		map.put("mdto", mdto2);		
		
		return map;
	}
	
	
	
	@RequestMapping(value="tasteMake.do")
	public String tasteMake(Locale locale, Model model) {
		logger.info("초기 취향 생성완료", locale);
		
		
		
		//인덱스 말고 영화추천페이지나 개인페이지로 가도 될듯
		//아니면 결과 페이지(그래프 같은거 보여주기)
		return "index";
	}
	
	//취향추천 메소드
	//취향추천 영화
	//비슷한 영화
	//비슷한 유저 추천
	
	
	//취향 들고와서 절대값 0에 가장 가까운 것. 
	

	
	
	
}
