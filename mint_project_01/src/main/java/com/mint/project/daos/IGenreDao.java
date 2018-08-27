package com.mint.project.daos;

import java.util.List;

import com.mint.project.dtos.GenreDto;

public interface IGenreDao {

   
   public boolean insertGenre(GenreDto gdto);
   
   public boolean updateGenre(GenreDto gdto);   
   
   public GenreDto getGenre(int mseq);
   
   public List<GenreDto> getAllGenre();

   public boolean delGenre(int mseq);
}