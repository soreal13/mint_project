package com.mint.project.daos;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mint.project.dtos.TasteDto;

@Repository
public class TasteDaoImp implements ITasteDao {

   @Autowired
   private SqlSessionTemplate sqlSession;
   
   private String namespace="com.mint.project.taste.";
   
   @Override
   public boolean insertTaste(TasteDto tdto) {
      int count=0;
      count=sqlSession.insert(namespace+"insertTaste", tdto);      
      return count>0?true:false;
   }

   @Override
   public TasteDto getTaste(int useq) {
      return sqlSession.selectOne(namespace+"getTaste", useq);
   }
   
   @Override
   //모든유저 취향정보 
      public List<TasteDto> getAllTaste(){
      return sqlSession.selectList(namespace+"getAllTaste");
   }

   @Override
   public boolean updateTaste(TasteDto tdto) {
      int count=sqlSession.update(namespace+"updateTaste", tdto);
      return count>0?true:false;
   }

   @Override
   public boolean delTaste(int useq) {
      int count=0;
      count=sqlSession.delete(namespace+"delTaste", useq);
      return count>0?true:false;
   }

}