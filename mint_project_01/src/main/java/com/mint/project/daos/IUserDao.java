package com.mint.project.daos;

import com.mint.project.dtos.UserDto;

public interface IUserDao {


// 자동로그인 관련 추가 필요	
	
	
	//이메일중복체크	
	public UserDto chkEmail(String uemail);
		
	//별명 중복체크
	public UserDto chkNick(String unick);
	
	//가입
	public boolean register(UserDto udto);
		 
	//로그인
	public UserDto login(String uemail, String upwd);
	
	//프로필이미지변경
	public boolean updateUimg (int useq, String uimg);
	
	//유저정보 업데이트
	public int updateUserinfo(UserDto udto);	
		   
	//회원탈퇴
	public boolean delUser(int useq);
		   
	//회원정보가져오기(pwd제외)
	public UserDto getUserinfo(UserDto udto);
		   
	//즐겨찾는 영화,유저 칼럼 가져오기
	public UserDto getUserFavorite(int useq);
		   
	//유저가 쓴 리뷰 가져오기
	public UserDto getUserReview(int useq);


	
	
	
}
