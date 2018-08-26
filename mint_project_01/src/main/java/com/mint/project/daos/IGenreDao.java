package com.mint.project.daos;

import java.util.List;

import com.mint.project.dtos.GenreDto;

public interface IGenreDao {


//-�옣瑜� (GenreDaoImp.java)
//insertGenre
//updateGenre
//getGenre
//getGenreAll
//delGenre	�쁺�솕�궘�젣�떆 �듃�옖�옲�뀡, �옣瑜대룄 �븘�삁 �궘�젣.
//	
	
	public boolean insertGenre(GenreDto gdto);
	
	public boolean updateGenre(GenreDto gdto);	
	
	public GenreDto getGenre(int mseq);
	
	public List<GenreDto> getAllGenre();

	public boolean delGenre(int mseq);
	
}
