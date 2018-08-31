package com.mint.project.daos;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mint.project.dtos.GenreDto;


@Repository
public class GenreDaoImp implements IGenreDao {
   
   @Autowired
   private SqlSessionTemplate sqlSession;
   
   private String namespace="com.mint.project.genre.";

   @Override
   public boolean insertGenre(GenreDto gdto) {
      int count=0;
      count=sqlSession.insert(namespace+"insertGenre", gdto);      
      return count>0?true:false;
   }

   @Override
   public boolean updateGenre(GenreDto gdto) {
      int count=sqlSession.update(namespace+"updateGenre", gdto);
      return count>0?true:false;
   }

   @Override
   public GenreDto getGenre(int mseq) {
      return sqlSession.selectOne(namespace+"getGenre", mseq);
   }

   @Override
   public List<GenreDto> getAllGenre() {
      return sqlSession.selectList(namespace+"getAllGenre");
   }

   @Override
   public boolean delGenre(int mseq) {
      int count=0;
      count=sqlSession.delete(namespace+"delGenre", mseq);
      return count>0?true:false;
   }

}