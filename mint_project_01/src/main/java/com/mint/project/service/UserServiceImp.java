package com.mint.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mint.project.daos.IUserDao;
import com.mint.project.dtos.UserDto;


@Service
public class UserServiceImp implements IUserService {

   @Autowired
   private IUserDao udao;
   
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

//   @Override
//   public UserDto getUserFavorite(int useq) {
//      
//      return udao.getUserFavorite(useq);
//   }

   @Override
   public UserDto getUserReview(int useq) {
      
      return udao.getUserReview(useq);
   }

@Override
public boolean updateUimg(int useq, String uimg) {
	// TODO Auto-generated method stub
	return false;
}

}
