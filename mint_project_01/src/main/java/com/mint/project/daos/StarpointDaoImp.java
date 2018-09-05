package com.mint.project.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mint.project.dtos.StarpointDto;


@Repository
public class StarpointDaoImp implements IStarpointDao {
   @Autowired
      private SqlSessionTemplate sqlSession;
      private String namespace="com.mint.project.starpoint.";
   
   @Override
   public boolean insertStarpoint(StarpointDto sdto) {
        int count=0;
         count=sqlSession.insert(namespace+"insertStarpoint", sdto);
         return count>0?true:false;
   }

   @Override
   public boolean updateStarpoint(StarpointDto sdto) {
       int count=sqlSession.update(namespace+"updateStarpoint",sdto);
         return count>0?true:false;
   }

   @Override
   public StarpointDto getOneStarpoint(int useq, int mseq) {
      Map<String, Integer> map=new HashMap<String, Integer>();
      
       map.put("suseq", useq);
       map.put("smseq", mseq);

      
      return sqlSession.selectOne(namespace+"getOneStarpoint",map);
      
   }

   @Override
   public List<StarpointDto> getUserStarpoint(int useq) {
      return sqlSession.selectList(namespace+"getUserStarpoint",useq);
   }

   @Override
   public List<StarpointDto> getMovieStarpoint(int mseq) {
      return sqlSession.selectList(namespace+"getMovieStarpoint",mseq);
   }

   @Override
   public List<StarpointDto> getAllstarpoint() {
      return sqlSession.selectList(namespace+"getAllstarpoint");
   }

}