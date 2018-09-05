package com.mint.project.daos;

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
   public UserDto getUserFavorite(int useq) {
      return sqlSession.selectOne(namespace+"getUserFavorite",useq);
   }
  

   @Override
   public UserDto getUserReview(int useq) {
      return sqlSession.selectOne(namespace+"getUserReview",useq);
   }

}