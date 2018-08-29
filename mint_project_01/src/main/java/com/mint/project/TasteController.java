
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

import com.mint.project.dtos.TasteDto;
import com.mint.project.service.ITasteService;

@Controller
public class  TasteController {

	private static final Logger logger = LoggerFactory.getLogger(TasteController.class);
	
	@Autowired
	private ITasteService tService;
		
	
	@RequestMapping(value="/taste.do", method =RequestMethod.GET)
	public String taste(Locale locale, Model model) {
		
		return "taste";
	}
	
	//처음 취향창 갈 때 취향 칼럼 생성. useq=tseq
	@RequestMapping(value="/taste_init.do")
	public String tasteInit(Locale locale, Model model) {
		logger.info("처음 taste 만들기 {}.", locale);

		
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
	public String tasteAjax(String[] tastearry, Locale locale, Model model){
		logger.info("ajax처리:초기취향반영", locale);
		
		TasteDto tdto=new TasteDto();
		
		//단어 비교 및 set=1 		
		for(int i=0; i<tastearry.length; i++) {
			String tmp= tastearry[i].toString();
			tdto.setSelect(tmp);	
		}

		
		
//		for(int i=0; i<tastearry.length; i++) {
//			String tmp= tastearry[i].toString();
//			String dtmp= tdto.toString();
//			if(tmp.contains(dtmp)) {
//				
//			} else {
//				
//			}
//		}
			
			
		Map<String, TasteDto> map= new HashMap<>();
		boolean isS=tService.updateTaste(tdto);
		if(isS) {
			return "성공";
		} else {
			model.addAttribute("msg", "ajax처리 실패");
			return "error_page";
		}
		
		
		
		
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
