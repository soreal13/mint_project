
package com.mint.project;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
import com.mint.project.dtos.TasteDto;
import com.mint.project.dtos.UserDto;
import com.mint.project.service.ITasteService;
import com.mint.project.service.MovieServiceImp;
import com.mint.project.service.TasteServiceImp;
import com.mint.project.service.UserServiceImp;

@Controller
public class  TasteController {

	private static final Logger logger = LoggerFactory.getLogger(TasteController.class);
	
	@Autowired
	private TasteServiceImp tService;
	
	@Autowired
	private MovieServiceImp mService;
	
	@Autowired
	private UserServiceImp uService;
	
	TasteAop taop = new TasteAop();
	
	
	@RequestMapping(value="/testpage.do", method =RequestMethod.GET)
	public String testpage(Locale locale, Model model, HttpServletRequest request) {
		
		String[] result = taop.askKeyword("코미디, 드라마, 로맨스, ");
		System.out.println(result);
		
		return "index";
	}
		
	
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
	@RequestMapping(value="/tasteAjax_1.do", method= RequestMethod.POST)
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
			Map<String, MovieDto> map= new HashMap<String, MovieDto>();
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
	@RequestMapping(value="/tasteAjax_2.do", method=RequestMethod.POST)
	public Map<String, MovieDto> tasteAjax_2(Locale locale, Model model,HttpServletRequest request ){
		logger.info("ajax처리:초기취향 페이지2", locale);
		System.out.println(request.getParameter("mseq"));
		
		int mseq= Integer.parseInt(request.getParameter("mseq"));
		int count= Integer.parseInt(request.getParameter("count"));
		int starpoint= Integer.parseInt(request.getParameter("starpoint"));
		
		
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
			 
			//3. 해당 유저의 취향 불러오기( 테스트로 1받음)
			//TasteDto tdto = tService.getTaste(useq);
			TasteDto tdto = tService.getTaste(1);
			
			//4. 환산 별점 해당유저 취향 키워드에 맞춰서 '더하기'
			tdto= taop.pointToTaste(tdto, keyword, newstarpoint);
			 			
			//5.useq로 userTaste에 점수 가산해 넣기(업데이트, 단 가산하는거 aop로 반영하기)
			tService.updateTaste(tdto);						 			
			
			if(starpoint!=-2) {
				//여기서부턴 별점 평가에 관련한 것임 *민지*
				//별점 평가하기 movietable에 평균별점 나오게 넣기			 
				//userinfo에 별점평가한 seq 넣기
				
			}
			 			 			 							 
		//안봤어요(일단 아무것도 안함)
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
			
			TasteDto tdtolast = new TasteDto();
			
//			tdtolast.setTuseq(tuseq);
			tdtolast.setTseq(1);
			tdtolast.setTstatus("Y");
			
			tService.updateTaste(tdtolast);
			
			MovieDto mdto2 = mService.getMovieinfo(86);
			Map<String, MovieDto> map= new HashMap<String, MovieDto>();
			mdto2.setMseq(-1);
			map.put("mdto", mdto2);
					
			return map;
		}
		
	}
	
		
	@RequestMapping(value="/tasteMake.do")
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
