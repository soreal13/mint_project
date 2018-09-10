package com.mint.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mint.project.daos.ITasteDao;
import com.mint.project.daos.IUserDao;
import com.mint.project.dtos.TasteDto;
import com.mint.project.dtos.UserDto;


@Service
public class UserServiceImp implements IUserService {

   @Autowired
   private IUserDao udao;
   @Autowired
   private ITasteDao tdao;
   
   //김홍익 작성 코드.
   
   
   @Override
   public UserDto chkEmail(String uemail) {
      
      return udao.chkEmail(uemail);
   }

   @Override
   public UserDto chkNick(String unick) {
      
      return udao.chkNick(unick);
   }

   @Override
   public boolean updateUimg(UserDto udto) {
      
      return udao.updateUimg(udto);
   }

   @Override
   public int updateUserinfo(UserDto udto) {
      
      return udao.updateUserinfo(udto);
   }

   @Override
   public boolean delUser(int useq) {
      
      return udao.delUser(useq);
   }

   @Override
   public UserDto getUserinfo(UserDto udto) {
      
      return udao.getUserinfo(udto);
   }

   @Override
   public List<UserDto> getFavoriteMovie(String[] seqs) {
      
      return udao.getFavoriteMovie(seqs);
   }
   
   @Override
   public List<UserDto> getUserReview(int useq) {
      
      return udao.getUserReview(useq);
   }

   @Transactional
   @Override
	public boolean register(UserDto udto, TasteDto tdto) {
	   
	   udao.register(udto);
	   return tdao.insertTaste(tdto);
	   
   }
      
   @Override
	public UserDto login(UserDto udto) {
	   return udao.login(udto);
   }
   @Override
   public List<UserDto> getAlluserinfo(){
   	return udao.getAlluserinfo();
   }
   
   @Override
   //영화추가
   public boolean updateFavoriteMovie(UserDto udto) {
	   return udao.updateFavoriteMovie(udto);
   }
   
   @Override
   //유저 즐찾 확인
   public UserDto chkFavorite(int useq) {
	   return udao.chkFavorite(useq);
   }
   
   
   @Override
   //유저 즐찾 삭제
   public boolean delFavoriteMovie(UserDto udto) {
	   return udao.delFavoriteMovie(udto);
   }
  
}
