package com.mint.project.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mint.project.dtos.UserDto;


@Repository
public class UserDaoImp implements IUserDao {
   
   @Autowired
      private SqlSessionTemplate sqlSession;
      private String namespace="com.mint.project.user.";
   
   @Override
   public UserDto chkEmail(String uemail) {
      return sqlSession.selectOne(namespace+"chkEmail",uemail);
   }

   @Override
   public UserDto chkNick(String unick) {
      return sqlSession.selectOne(namespace+"chkNick",unick);
   }

   @Override
   public boolean register(UserDto udto) {
      int count=0;
      count=sqlSession.insert(namespace+"register",udto);
      return count>0?true:false;
   }

   @Override
   public UserDto login(UserDto udto) {
      return sqlSession.selectOne(namespace+"login",udto);
   }

   @Override
   public boolean updateUimg(UserDto udto) {
      int count=0;
      count=sqlSession.update(namespace+"updateUimg",udto);
      return count>0?true:false;
   }

   @Override
   public int updateUserinfo(UserDto udto) {
	   return sqlSession.update(namespace+"updateUserinfo",udto);
   }

   @Override
   public boolean delUser(int useq) {
      int count=0;
      count=sqlSession.update(namespace+"delUser",useq);
      return count>0?true:false;
   }

   @Override
   public UserDto getUserinfo(UserDto udto) {
      return sqlSession.selectOne(namespace+"getUserinfo",udto);
   }

   @Override
   public List<UserDto> getUserReview(int useq) {
      return sqlSession.selectList(namespace+"getUserReview",useq);
   }


   @Override
   public List<UserDto> getFavoriteMovie(String[] seqs) {
      Map<String, String[]> map=new HashMap<String, String[]>();
      map.put("seqs",seqs);
      return sqlSession.selectList(namespace+"getFavoriteMovie",map);
   }

   //영화 즐찾추가
   public boolean  updateFavoriteMovie (UserDto udto) {
	   int count=sqlSession.update(namespace+"updatefavoritemovie",udto);
	      return count>0?true:false;
   }
   
   //유저 즐찾 확인
   public UserDto chkFavorite(int useq) {
	   return sqlSession.selectOne(namespace+"chkfavorite",useq);
   }
   

   //영호 즐찾 삭제
   public boolean delFavoriteMovie(UserDto udto) {
	   int count=sqlSession.update(namespace+"delfavoritemovie",udto);
	      return count>0?true:false;
   
   }
   
   //ㅁㅈ
   @Override
   public List<UserDto> getAlluserinfo() {
	   return sqlSession.selectList(namespace+"getAlluserinfo");
   }
   
   @Override
   public boolean delRe(int useq) {
      int count=0;
         count=sqlSession.update(namespace+"delRe",useq);
         return count>0?true:false;
   }

}