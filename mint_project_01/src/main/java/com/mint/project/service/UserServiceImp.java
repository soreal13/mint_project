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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserDto chkNick(String unick) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateUimg(int useq, String uimg) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int updateUserinfo(UserDto udto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean delUser(int useq) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public UserDto getUserinfo(UserDto udto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserDto getUserFavorite(int useq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserDto getUserReview(int useq) {
		// TODO Auto-generated method stub
		return null;
	}

}
