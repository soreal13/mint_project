package com.mint.project.service;

import com.mint.project.dtos.TasteDto;

public interface ITasteService {

	
	//초기 취향정보 생성
	public int insertTaste(TasteDto tdto);
	
	//취향정보 가져옴
	public TasteDto getTaste(int useq);
	
	//취향정보 수정
	public boolean updateTaste(TasteDto tdto);
	
	//취향정보 삭제
	public boolean deleteTaste(int useq);
	
	
	
	
}
