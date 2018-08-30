package com.mint.project.service;

import java.util.List;

import com.mint.project.dtos.GenreDto;


public interface IGenreService {
	
	//초기 취향정보 생성
	public boolean insertGenre(GenreDto gdto);
	
	//취향정보 가져옴
	public GenreDto getGenre(int mseq);
	
	public List<GenreDto> getAllGenre();
	
	//취향정보 수정
	public boolean updateGenre(GenreDto gdto);
	
	//취향정보 삭제
	public boolean delGenre(int mseq);

}
