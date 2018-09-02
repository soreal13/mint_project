
package com.mint.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mint.project.daos.IGenreDao;
import com.mint.project.daos.IMovieDao;
import com.mint.project.dtos.MovieDto;

@Service
public class MovieServiceImp implements IMovieService {

   
   @Autowired
   private IGenreDao gdao;
   @Autowired
   private IMovieDao mdao;
   
   @Override
   public boolean insertMovie(MovieDto mdto) {
      return mdao.insertMovie(mdto);
   }

   @Override
   public boolean updateMovie(MovieDto mdto) {
      return mdao.updateMovie(mdto);
   }

   @Override
   public boolean delMovie(int mseq) {
      return mdao.delMovie(mseq);
   }

   @Override
   public MovieDto getMovieinfo(int mseq) {
	   System.out.println("서비스 결과"+mdao.getMovieinfo(mseq));
      return mdao.getMovieinfo(mseq);
   }
   
   @Override
   public List<MovieDto> getCertainMovieinfo(String search) {
      return mdao.getCertainMovieinfo(search);
   }
   
   @Override
   public List<MovieDto> getAllMovieinfo() {
      return mdao.getAllMovieinfo();

   }

   @Override
   public boolean updateFollow(String mfollow, int mseq) {
      return mdao.updateFollow(mfollow,mseq);
   }
   
   @Override
   public MovieDto chkFollow(int useq) {
      return mdao.chkFollow(useq);
   }
   
   @Override
   public boolean delFollow(String mfollow, int mseq) {
      return mdao.delFollow(mfollow,mseq);
   }


   

}
