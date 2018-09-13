
package com.mint.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mint.project.daos.IGenreDao;
import com.mint.project.daos.IMovieDao;
import com.mint.project.daos.IUserDao;
import com.mint.project.dtos.MovieDto;
import com.mint.project.dtos.UserDto;

@Service
public class MovieServiceImp implements IMovieService {

   
   @Autowired
   private IGenreDao gdao;
   @Autowired
   private IMovieDao mdao;
   //$$$
   @Autowired
   private IUserDao udao;
   
   
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

   //$$$
   @Transactional
   @Override
   public boolean updateFollow(UserDto udto,MovieDto mdto) {
	   		 udao.updateFavoriteMovie(udto);
      return mdao.updateFollow(mdto);
   }
   
   @Override
   public MovieDto chkFollow(int useq) {
      return mdao.chkFollow(useq);
   }
   
   //$$$
   @Transactional
   @Override
   public boolean delFollow(UserDto udto,MovieDto mdto) {
	   udao.delFavoriteMovie(udto);
      return mdao.delFollow(mdto);
   }

   

}