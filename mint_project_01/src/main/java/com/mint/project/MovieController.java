package com.mint.project;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mint.project.aop.TasteAop;
import com.mint.project.dtos.MovieDto;
import com.mint.project.dtos.ReviewDto;
import com.mint.project.dtos.StarpointDto;
import com.mint.project.dtos.TasteDto;
import com.mint.project.dtos.UserDto;
import com.mint.project.service.IMovieService;
import com.mint.project.service.IReviewService;
import com.mint.project.service.IStarpointService;
import com.mint.project.service.IUserService;
import com.mint.project.service.TasteServiceImp;



//Movie 김민지 작성

@Controller
public class  MovieController {

	private static final Logger logger = LoggerFactory.getLogger( MovieController.class);
	
	@Autowired
	public IMovieService movieServiceImp;
	
	@Autowired
	public IReviewService reviewServiceImp;
	
	@Autowired
	public IStarpointService starpointServiceImp;
	
	@Autowired
	public IUserService userServiceImp;

	@Autowired
	private TasteServiceImp tasteService;	
	
	TasteAop taop = new TasteAop();

	
		   // 영화한편정보
	
	@RequestMapping(value="/movie_info.do")
	   public String getMovieinfo(ModelMap model, int mseq, HttpSession session) {
	      //영화 정보 페이지 로딩시 불러올것
		int useq=0;
	       UserDto ldto2=(UserDto)session.getAttribute("ldto");
	      if(session.getAttribute("ldto")==null) {
	         useq=0;
	      } else if(session.getAttribute("ldto")!=null){
	         useq=ldto2.getUseq();
	      }
	      //1 해당 영화 정보
	      MovieDto mdto=new MovieDto();
	      mdto=movieServiceImp.getMovieinfo(mseq);
	      model.addAttribute("mdto", mdto);
	      StarpointDto sdto= new StarpointDto();
	      String chkF;
	      if(useq==0) {
	         sdto=null;
	         model.addAttribute("sdto",sdto);
	         
	         model.addAttribute("chkF", "N");
	      } else {
	         UserDto ldto=(UserDto)session.getAttribute("ldto");
	         model.addAttribute("ldto", ldto);      
	         
	         String str=""+mdto.getMfollow();
	         String user_useq=""+useq;
	         String target=":"+user_useq+":";
	         if(str.contains(target)) {
	            System.out.println("문자열있음");
	            model.addAttribute("chkF", "Y");
	         } else {
	            System.out.println("문자열없음");
	            model.addAttribute("chkF", "N");
	         }
	         
	         //2 해당 영화 별점 정보
	         
	         int suseq = useq;
	         int smseq = mseq;
	         System.out.println("suseq="+suseq+" smuseq="+smseq);
	         sdto=starpointServiceImp.getOneStarpoint(suseq, smseq);
	         
	         System.out.println("안녕 여기는 무비컨트롤러얌 "+sdto);
	         model.addAttribute("sdto",sdto);
	      }
	   
	   
	      
	      //3 해당 영화 리뷰 정보  + 리뷰 불러올때 해당 리뷰들에 공감찍었는지 확인해야함. 
	      List<ReviewDto> rlist=reviewServiceImp.getMovieReview(mseq);
	      model.addAttribute("rlist", rlist);
	      
	      
	      //4 해당 영화 팔로우 정보 null!=false입니다..
//	      아니 이미 mdto에 mfollow가 있으니까 거기서 문자열 검색으로 체크해야지
	      
	      
	      //소진 작성 	      
          //관련 영화 추천 메소드
			//1. 키워드(장르) 알아내기
			 String mkeyw = mdto.getMkeyw();
			 System.out.println("ddddd"+mkeyw);
			
			 //2. ',' 기준으로 키워드 나누기.
		String[] keyword= taop.askKeyword(mkeyw);
		Collections.shuffle(Arrays.asList(keyword));
        List<MovieDto> tmlist= movieServiceImp.getCertainMovieinfo(keyword[0], "basic");
         Collections.shuffle(tmlist);
          
         model.addAttribute("tmlist", tmlist);
         model.addAttribute("keyw", keyword[0]);
	      	      
	      return "movie_info";
	      
	   }
	
	   

	   // 특정 영화 정보(검색어 나오는 메소드)
	@RequestMapping(value="/movie_search.do",produces="text/plain;charset=UTF-8")
	public String getCertainMovieinfo(Model model,String search, String desc){
	
			List<MovieDto> smlist=movieServiceImp.getCertainMovieinfo(search,desc);
			model.addAttribute("smlist", smlist);
			model.addAttribute("search", search);
			
	
		return "movie_search";
		
	};
	
	//180903 추가
	@RequestMapping(value="/search.do",produces="text/plain;charset=UTF-8")
	public String searchMovie(){
		return "search";
		
	};
	@RequestMapping(value="/searchgenre.do",produces="text/plain;charset=UTF-8")
	public String searchGenre(){
		return "movie_keyword";
		
	};
	    
	   // 영화전체정보...쓸일없는듯
	@RequestMapping(value="/allmovieinfo.do", method =RequestMethod.GET)
	public String getAllMovieinfo(Model model){
		List<MovieDto> mlist=movieServiceImp.getAllMovieinfo();
		model.addAttribute("mlist", mlist);
		return "movie_search";
		
	};
	
	   
	//팔로우 하기 (좋아요 되어있지 않는 상태에서 보이는 메소드)
	   @RequestMapping(value="/updateFollow.do")
	   public String updateFollow(Model model,int useq, int mseq) {
	      System.out.println("useq="+useq+"mseq="+mseq);
	      String mfollow=""+useq;
	      String ufmseq=""+mseq;
	      System.out.println("mseq?"+mseq);
	      MovieDto mDto=new MovieDto();
	      mDto.setMfollow(mfollow);
	      mDto.setMseq(mseq);
	      
	      UserDto uDto=new UserDto();
	      uDto.setUseq(useq);
	      uDto.setUfmseq(ufmseq);
	      
	      boolean isS=movieServiceImp.updateFollow(uDto,mDto);
	      System.out.println(isS);
	      if(isS) {
	         
	            return "redirect:movie_info.do?mseq="+mseq+"&useq="+useq;
	         
	         
	      } else {
	         model.addAttribute("msg","팔로우 해제 실패1");
	         return "error";
	      }
	   
	      
	   }
	   
	   //팔로우 삭제
	   @RequestMapping(value="/delFollow.do")
	   public String delFollow(Model model,int useq,int mseq) {
	      
	      String mfollow=":"+useq+":";
	      String ufmseq=":"+mseq+":";
	      MovieDto mdto=new MovieDto();
	      mdto.setMfollow(mfollow);
	      mdto.setMseq(mseq);

	      UserDto udto=new UserDto();
	      udto.setUseq(useq);
	      udto.setUfmseq(ufmseq);
	      
	            boolean isS=movieServiceImp.delFollow(udto,mdto);
	            if(isS) {
	                  return "redirect:movie_info.do?mseq="+mseq+"&useq="+useq;
	            
	            } else {
	               model.addAttribute("msg","팔로우 해제 실패1");
	               return "error";
	            }
	         
	   }
	

	 //후기 생성
		@RequestMapping(value="/insertReview.do", method =RequestMethod.POST)
		public String insertReview(Model model,ReviewDto rdto) {
			
			boolean isS=reviewServiceImp.insertReview(rdto);
			if(isS) {
				return "redirect:movie_info.do?mseq="+rdto.getRmseq()+"&useq="+rdto.getRuseq();
			} else {
				model.addAttribute("msg","리뷰 작성 실패");
				return "error";
			}
		}

		//후기수정
		public String updateReview(Model model,ReviewDto rdto) {
			boolean isS=reviewServiceImp.updateReview(rdto);
			if(isS) {
				return "redirect:movie_info.do?mseq="+rdto.getRmseq();
			} else {
				model.addAttribute("msg","리뷰 작성 실패");
				return "error";
			}
		}
	
		//후기 삭제
		public String delReview(Model model,ReviewDto rdto) {
			boolean isS=reviewServiceImp.delReview(rdto.getRseq());
			if(isS) {
				return "redirect:movie_info.do?mseq="+rdto.getRmseq();
			} else {
				model.addAttribute("msg","리뷰 삭제 실패");
				return "error";
			}
		}
	
		//영화별후기 전체보기.
		@RequestMapping(value="/movie_review.do", method =RequestMethod.GET)
		public String getMovieReview(Model model,int mseq,int useq,HttpSession session) {
			
			MovieDto mdto=new MovieDto();
			mdto=movieServiceImp.getMovieinfo(mseq);
			model.addAttribute("mdto", mdto);
			StarpointDto sdto= new StarpointDto();
			String chkF;
			if(useq==0) {
				
				
				model.addAttribute("chkF", "N");
			} else {
				UserDto ldto=(UserDto)session.getAttribute("ldto");
				model.addAttribute("ldto", ldto);		
				
				String str=""+mdto.getMfollow();
				String user_useq=""+useq;
				String target=":"+user_useq+":";
				if(str.contains(target)) {
					System.out.println("문자열있음");
					model.addAttribute("chkF", "Y");
				} else {
					System.out.println("문자열없음");
					model.addAttribute("chkF", "N");
				}

			}
		
		
			
			//3 해당 영화 리뷰 정보  + 리뷰 불러올때 해당 리뷰들에 공감찍었는지 확인해야함. 
			List<ReviewDto> rlist=reviewServiceImp.getMovieReview(mseq);
			model.addAttribute("rlist", rlist);
			
			return "movie_review.do?mseq="+mseq;
		}
	
		//후기 공감
		@RequestMapping(value="/updateUp.do", method =RequestMethod.GET)
		public String updateUp(Model model, int useq, int rseq,int mseq) {
			System.out.println("공감!!"+mseq);
			String rupuseq=""+useq;
			ReviewDto rdto = new ReviewDto();
			rdto.setRupuseq(rupuseq);
			rdto.setRseq(rseq);
			rdto.setRmseq(mseq);
			
			boolean isS=reviewServiceImp.updateUp(rdto);
			if(isS) {
				return "redirect:movie_info.do?mseq="+rdto.getRmseq()+"&useq="+useq+"&mseq"+rdto.getRmseq();
			} else {
				model.addAttribute("msg","공감 업데이트 실패");
				return "error";
			}
		}
	
		//후기 공감 취소
		@RequestMapping(value="/updateDown.do", method =RequestMethod.GET)
		public String updateDown(Model model, int useq, int rseq, int mseq) {
			String rupuseq=":"+useq+":";
			ReviewDto rdto = new ReviewDto();
			rdto.setRupuseq(rupuseq);
			rdto.setRseq(rseq);
			rdto.setRmseq(mseq);
			boolean isS=reviewServiceImp.updateDown(rdto);
			if(isS) {
				return "redirect:movie_info.do?mseq="+rdto.getRmseq()+"&useq="+useq+"&mseq"+rdto.getRmseq();
			} else {
				model.addAttribute("msg","공감 다운 실패");
				return "error";
			}
		}
		
	// 별점 등록
	@RequestMapping(value="/insertStarpoint.do")
	public String insertStarpoint(Model model,StarpointDto sdto, int sgrade, int useq, int mseq) {
		System.out.println("sgrade?"+sgrade);
		sdto.setSgrade(sgrade);
		sdto.setSuseq(useq);
		sdto.setSmseq(mseq);
		
		//소진작성 취향반영
		int newgrade= taop.scalePoint(sdto.getSgrade());
		System.out.println(newgrade);
		MovieDto mdto= movieServiceImp.getMovieinfo(mseq);
		String mkeyw =mdto.getMkeyw();
		String[] keyword =taop.askKeyword(mkeyw);
		TasteDto tdto = tasteService.getTaste(useq);
		tdto= taop.pointToTaste(tdto, keyword, newgrade);
				
				
		//민지작성 코드 이어서.
		System.out.println("별점은??"+sdto.getSgrade());
		boolean isS=starpointServiceImp.insertStarpoint(sdto, tdto); //트랜잭션 처리함
		if(isS) {
			return "redirect:movie_info.do?mseq="+sdto.getSmseq()+"&useq="+sdto.getSuseq();
		} else {
			model.addAttribute("msg","별점 등록 실패");
			return "error";
		}
	}
	
	
	
	//별점 수정
	@RequestMapping(value="/updateStarpoint.do")
	public String updateStarpoint(Model model,StarpointDto sdto, int sgrade, int sseq,int useq, int mseq) {
		
		sdto=starpointServiceImp.getOneStarpoint(useq, mseq);
		
		System.out.println("dkdkdkdk"+useq);
		//소진 작성 먼저 점수 차 구하기(현재별점-이전별점 //현재별점>이전별점 : +값, 현재별점<이전별점 : -값) 
		int newgrade=(sgrade-(sdto.getSgrade()));
//		System.out.println(newgrade);
		
		MovieDto mdto= movieServiceImp.getMovieinfo(mseq);
		
		String mkeyw=mdto.getMkeyw();
		
		String[] keyword =taop.askKeyword(mkeyw);
//		TasteDto tdto= tasteService.getTaste(sdto.getSuseq()); //이게 지금 안돼?
		TasteDto tdto= tasteService.getTaste(useq);
		System.out.println("tdto 수정 들어옴"+tdto.toString());
		
		tdto= taop.pointToTaste(tdto, keyword, newgrade);		
		
		sdto.setSgrade(sgrade);
		sdto.setSseq(sseq);
		sdto.setSuseq(useq);
		sdto.setSmseq(mseq);
				
		boolean isS=starpointServiceImp.updateStarpoint(sdto, tdto);
		if(isS) {
			return "redirect:movie_info.do?mseq="+sdto.getSmseq()+"&useq="+sdto.getSuseq();
		} else {
			model.addAttribute("msg","별점 수정 실패");
			return "error";
		}
		
	}
	
//	//별점 수정 
//	   @RequestMapping(value="/updateStarpoint.do")
//	   public String updateStarpoint(Model model,StarpointDto sdto, int sgrade, int sseq,int useq, int mseq) {
//	      
//	      //소진 작성 먼저 점수 차 구하기(현재별점-이전별점 //현재별점>이전별점 : +값, 현재별점<이전별점 : -값) 
//	      int scale_newgrade=(sgrade-(sdto.getSgrade()));
//	      MovieDto mdto= movieServiceImp.getMovieinfo(mseq);
//	      String mkeyw =mdto.getMkeyw();
//	      String[] keyword =taop.askKeyword(mkeyw);
//	      TasteDto tdto = tasteService.getTaste(sdto.getSuseq());
//	      tdto= taop.pointToTaste(tdto, keyword, scale_newgrade);      
//	      
//	      sdto.setSgrade(sgrade);
//	      sdto.setSseq(sseq);
//	      sdto.setSuseq(useq);
//	      sdto.setSmseq(mseq);
//	            
//	      boolean isS=starpointServiceImp.updateStarpoint(sdto, tdto);
//	      if(isS) {
//	         return "redirect:movie_info.do?mseq="+sdto.getSmseq()+"&useq="+sdto.getSuseq();
//	      } else {
//	         model.addAttribute("msg","별점 수정 실패");
//	         return "error";
//	      }
//	      
//	   }
	
}
