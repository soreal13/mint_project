package com.mint.project;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mint.project.dtos.MovieDto;
import com.mint.project.dtos.ReviewDto;
import com.mint.project.dtos.StarpointDto;
import com.mint.project.service.IMovieService;
import com.mint.project.service.IReviewService;
import com.mint.project.service.IStarpointService;



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
	
	
	
		   // 영화한편정보
	
	@RequestMapping(value="/movie_info.do", method =RequestMethod.GET)
	public String getMovieinfo(ModelMap model, int mseq, int useq) {
		//영화 정보 페이지 로딩시 불러올것
		
		//1 해당 영화 정보
		MovieDto mdto=new MovieDto();
		mdto=movieServiceImp.getMovieinfo(mseq);
		model.addAttribute("mdto", mdto);
		
		
		//3 해당 영화 리뷰 정보  + 리뷰 불러올때 해당 리뷰들에 공감찍었는지 확인해야함. 
		List<ReviewDto> rlist=reviewServiceImp.getMovieReview(mseq);
		model.addAttribute("rlist", rlist);
		
		//4 해당 영화 팔로우 정보 null!=false입니다..
//		아니 이미 mdto에 mfollow가 있으니까 거기서 문자열 검색으로 체크해야지
		String str=""+mdto.getMfollow();
		String user_useq=""+useq;
		String target=":"+user_useq+":";
		String chkF;
		if(str.contains(target)) {
			System.out.println("문자열있음");
			model.addAttribute("chkF", "Y");
		} else {
			System.out.println("문자열없음");
			model.addAttribute("chkF", "N");
		}
		
		//2 해당 영화 별점 정보
		StarpointDto sdto= new StarpointDto();
		int suseq = useq;
		int smseq = mseq;
		System.out.println("suseq="+suseq+" smuseq="+smseq);
		sdto=starpointServiceImp.getOneStarpoint(suseq, smseq);
		
		System.out.println("안녕 여기는 무비컨트롤러얌 "+sdto);
		model.addAttribute("sdto",sdto);
		return "movie_info";
		
	};
	   
	   // 특정 영화 정보(검색어 나오는 메소드)
	@RequestMapping(value="/movie_search.do")
	public String getCertainMovieinfo(Model model,String search){
		List<MovieDto> smlist=movieServiceImp.getCertainMovieinfo(search);
		model.addAttribute("smlist", smlist);
		
		return "movie_search.do?search"+search;
		
	};
	    
	   // 영화전체정보...쓸일없는듯
	@RequestMapping(value="/.do", method =RequestMethod.GET)
	public String getAllMovieinfo(Model model){
		List<MovieDto> mlist=movieServiceImp.getAllMovieinfo();
		model.addAttribute("mlist", mlist);
		return "movie_search";
		
	};
	
	   
	//팔로우 하기
	@RequestMapping(value="/updateFollow.do")
	public String updateFollow(Model model,String mfollow_sample, int useq, int mseq) {
		String[] target = mfollow_sample.split(":");
		String t = ""+useq;
		System.out.println("updateFollow ... useq=="+t);
		for(int i=0;i<target.length;i++) {
			
			if(target[i].equals(t)) {
					model.addAttribute("msg","팔로우 실패1");
					return "error";
				
			} else {
				String mfollow=t;
				boolean isS=movieServiceImp.updateFollow(mfollow,mseq);
				if(isS) {
					return "redirect:movie_info.do?mseq="+mseq;
				
				} else {
					model.addAttribute("msg","팔로우 실패2");
					return "error";
				}
			}
			
		}
		model.addAttribute("msg","팔로우 실패 *** ***");
		return "error";
		
	}
	   
	   //팔로우 삭제
	@RequestMapping(value="/delFollow.do")
	public String delFollow(Model model,String mfollow_sample,String useq,int mseq) {
		String[] target = mfollow_sample.split(":");
		String t = ""+useq;
		for(int i=0;i<target.length;i++) {
			
			if(target[i].equals(t)) {
				String mfollow=t;
				boolean isS=movieServiceImp.delFollow(mfollow,mseq);
				if(isS) {
					return "redirect:movie_info.do?mseq="+mseq;
				
				} else {
					model.addAttribute("msg","팔로우 해제 실패");
					return "error";
				}
			} else {
				model.addAttribute("msg","팔로우 해제 실패");
				return "error";
				
			}
			
		}
		model.addAttribute("msg","팔로우 해제 실패 *** ***");
		return "error";
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
	public String getMovieReview(Model model,int mseq) {
		List<ReviewDto> rlist=reviewServiceImp.getMovieReview(mseq);
		model.addAttribute("rlist", rlist);
		
		return "movie_review.do?mseq="+mseq;
	}
	
	//후기 공감
	public String updateUp(Model model,ReviewDto rdto) {
		boolean isS=reviewServiceImp.updateUp(rdto.getRseq(), rdto.getRuseq());
		if(isS) {
			return "redirect:movie_info.do?mseq="+rdto.getRmseq();
		} else {
			model.addAttribute("msg","공감 업데이트 실패");
			return "error";
		}
	}
	
	//후기 공감 취소
	public String updateDown(Model model,ReviewDto rdto) {
		boolean isS=reviewServiceImp.updateDown(rdto.getRseq(), rdto.getRuseq());
		if(isS) {
			return "redirect:movie_info.do?mseq="+rdto.getRmseq();
		} else {
			model.addAttribute("msg","공감 다운 실패");
			return "error";
		}
	}
	
	// 별점 등록
	@RequestMapping(value="/insertStarpoint.do", method =RequestMethod.POST)
	public String insertStarpoint(Model model,StarpointDto sdto) {
		System.out.println("여기는 무비컨트롤러~! 인서트스타포인트입니다용 "+sdto);
		boolean isS=starpointServiceImp.insertStarpoint(sdto);
		if(isS) {
			return "redirect:movie_info.do?mseq="+sdto.getSmseq()+"&useq="+sdto.getSuseq();
		} else {
			model.addAttribute("msg","별점 등록 실패");
			return "error";
		}
	}

	
}
