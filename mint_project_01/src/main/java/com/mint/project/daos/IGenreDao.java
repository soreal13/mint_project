package com.mint.project.daos;

import java.util.List;

import com.mint.project.dtos.GenreDto;

public interface IGenreDao {


//-장르 (GenreDaoImp.java)
//insertGenre
//updateGenre
//getGenre
//getGenreAll
//delGenre	영화삭제시 트랜잭션, 장르도 아예 삭제.
//	
	
	public int insertGenre(GenreDto gdto);
	
	public boolean updateGenre(GenreDto gdto);	
	
	public GenreDto getGenre(int mseq);
	
	public List<GenreDto> getAllGenre();

	public boolean delGenre(int mseq);
	
}
