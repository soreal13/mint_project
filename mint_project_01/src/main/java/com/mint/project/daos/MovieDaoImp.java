
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
      return sqlSession.selectOne(namespace+"getcertainmovieinfo",search);
   }

   @Override
   public List<MovieDto> getAllMovieinfo() {
      return sqlSession.selectList(namespace+"getallmovieinfo");
   }
//-------------------------------------------------------------------------------------------------
   @Override
   public boolean updateFollow(String mfollow,int mseq) {
	  MovieDto mdto=new MovieDto();
	 
	  mdto.setMfollow(mfollow);
	  mdto.setMseq(mseq);
	  System.out.println("mseq는? 업데이트팔로"+mseq);

      int count=sqlSession.update(namespace+"updatefollow",mdto);
      return count>0?true:false;
   }

   @Override
   public MovieDto chkFollow(int useq) {
	   return sqlSession.selectOne(namespace+"chkfollow",useq);
   }
   
   @Override
   public boolean delFollow(String mfollow, int mseq) {
	   Map<String, Object> map=new HashMap<>();
	   System.out.println("mseq는? 델팔로"+mseq);
	   map.put("mseq", mseq);
	   map.put("mfollow",mfollow);
	   
      int count=sqlSession.update(namespace+"delfollow",map);
      return count>0?true:false;
   }

}
