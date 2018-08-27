package com.mint.project.service;

import java.util.List;

import com.mint.project.dtos.TasteDto;

public interface ITasteService {

	
	//초기 취향정보 생성
	public boolean insertTaste(TasteDto tdto);
	
	//취향정보 가져옴
	public TasteDto getTaste(int useq);
	
	public List<TasteDto> getAllTaste();
	
	//취향정보 수정
	public boolean updateTaste(TasteDto tdto);
	
	//취향정보 삭제
	public boolean delTaste(int useq);
	
	
	
	
}
