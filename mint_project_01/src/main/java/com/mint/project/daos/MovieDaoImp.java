
package com.mint.project.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mint.project.dtos.MovieDto;


@Repository
public class MovieDaoImp implements IMovieDao {

   @Autowired
   private SqlSessionTemplate sqlSession;
   private String namespace="com.mint.project.movie.";
   
   @Override
   public boolean insertMovie(MovieDto mdto) {
      int count=sqlSession.insert(namespace+"insertmovie",mdto);
      return count>0?true:false;
   }

   @Override
   public boolean updateMovie(MovieDto mdto) {
      int count=sqlSession.update(namespace+"updatemovie",mdto);
      return count>0?true:false;
   }

   @Override
   public boolean delMovie(int mseq) {
      int count=sqlSession.delete(namespace+"delmovie",mseq);
      return count>0?true:false;
   }

   @Override
   public MovieDto getMovieinfo(int mseq) {
      return sqlSession.selectOne(namespace+"getmovieinfo",mseq);
   }

   @Override
   public List<MovieDto> getCertainMovieinfo(String search) {
      
      String mkeyw=search;
      System.out.println("mkeyw 여기는다오 = "+mkeyw);
      return sqlSession.selectList(namespace+"getcertainmovieinfo",mkeyw);
   }

   @Override
   public List<MovieDto> getAllMovieinfo() {
      return sqlSession.selectList(namespace+"getallmovieinfo");
   }
//-------------------------------------------------------------------------------------------------
   @Override
   public boolean updateFollow(MovieDto mDto) {
//     MovieDto mdto=new MovieDto();
    
//     mdto.setMfollow(mfollow);
//     mdto.setMseq(mseq);
//      System.out.println(mdto);
     System.out.println("mseq는? 업데이트팔로"+mDto);

      int count=sqlSession.update(namespace+"updatefollow",mDto);
      return count>0?true:false;
   }

   @Override
   public MovieDto chkFollow(int useq) {
      return sqlSession.selectOne(namespace+"chkfollow",useq);
   }
   
   @Override
   public boolean delFollow(MovieDto mdto) {
    
      int count=sqlSession.update(namespace+"delfollow",mdto);
      return count>0?true:false;
   }

}