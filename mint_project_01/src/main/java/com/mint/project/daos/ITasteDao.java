package com.mint.project.daos;

import java.util.List;

import com.mint.project.dtos.TasteDto;

public interface ITasteDao {
	
//	-취향(TasteDaoImp.java):
//		insertTaste 초기취향생성
//		getTaste 취향정보 가져옴
//		updateTaste 취향정보 수정
	
	//초기 취향정보 생성
	public boolean insertTaste(TasteDto tdto);
	
	//취향정보 가져옴
	public TasteDto getTaste(int useq);
	
	//모든유저 취향정보 
	public List<TasteDto> getAllTaste();
	
	//취향정보 수정
	public boolean updateTaste(TasteDto tdto);
	
	//취향정보 삭제
	public boolean delTaste(int useq);
	
	
	
}
