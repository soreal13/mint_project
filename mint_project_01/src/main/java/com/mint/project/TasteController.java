
package com.mint.project;

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
		
		System.out.println("들어옴");
		String tstatus = "N";
		int tuseq=1;
		
		TasteDto tdto=new TasteDto();
		tdto.setTseq(tuseq);
		tdto.setTuseq(tuseq);
		tdto.setTstatus(tstatus);
		
		System.out.println(tdto.getTseq());
		
		tService.insertTaste(tdto);
		
		
		
		return "taste_init";
	}
	
	//회원가입시 taste 창으로 이동
		@RequestMapping(value="/taste_init2.do")
		public String tasteInint2(Locale locale, Model model) {
			
			return "taste_init2";
		}
	
	
	
	@ResponseBody
	@RequestMapping(value="tasteAjax.do")
	public Map<String, TasteDto> tasteAjax(Locale locale, Model model){
		logger.info("ajax처리:취향반영", locale);
		TasteDto tdto = null;
		boolean isS=tService.updateTaste(tdto);
		if(isS) {
			
		}
		
		Map<String, TasteDto> map= new HashMap<>();
		
		return map;
	}
	
	@RequestMapping(value="tasteMake.do")
	public String tasteMake(Locale locale, Model model) {
		logger.info("취향 생성", locale);
		
		
		
		return "index";
	}
	
	
	//취향추천 영화
	//취향 들고와서 절대값 0에 가장 가까운 것. 
	
	
}
