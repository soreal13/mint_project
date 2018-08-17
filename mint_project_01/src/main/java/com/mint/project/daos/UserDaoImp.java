package com.mint.project.daos;

import org.springframework.stereotype.Repository;

import com.mint.project.dtos.UserDto;


@Repository
public class UserDaoImp implements IUserDao {

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
	public boolean register(UserDto udto) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public UserDto login(String uemail, String upwd) {
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
