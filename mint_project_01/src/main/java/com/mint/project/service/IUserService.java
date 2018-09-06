package com.mint.project.service;

import java.util.List;

import com.mint.project.dtos.TasteDto;
import com.mint.project.dtos.UserDto;

public interface IUserService {

//IUSER:

//getUserinfo 회원정보모두가져오기 (pwd 빼고 가져옴!)
//chkNick 닉변경시 중복체크
//updateNick 닉 변경 
//updateUimg 프로필이미지변경
//updateUserinfo 회원정보변경(바뀐정보만 업데이트/컨트롤러단에서)
//delUser 회원탈퇴
	
//getUserFavorite 즐겨찾는 영화, 유저 정보(해당유저칼럼임)
//getUserReview 리뷰	(해당유저가 남긴 리뷰)
	

	
	
	
	//이메일중복체크	
	public UserDto chkEmail(String uemail);
		
	//별명 중복체크
	public UserDto chkNick(String unick);

	//프로필이미지변경
	public boolean updateUimg(UserDto udto);
	
	//유저정보 업데이트
	public int updateUserinfo(UserDto udto);	
		   
	//회원탈퇴
	public boolean delUser(int useq);
		   
	//회원정보가져오기(pwd제외)
	public UserDto getUserinfo(UserDto udto);
		   
//	//즐겨찾는 영화,유저 칼럼 가져오기
	public UserDto getUserFavorite(int useq);
		   
	//유저가 쓴 리뷰 가져오기
	public List<UserDto> getUserReview(int useq);


	//회원가입
	public boolean register(UserDto udto, TasteDto dto);
       
	//로그인
	public UserDto login(UserDto udto);

	//민지
	public List<UserDto> getAlluserinfo();
	
	//------------------------------------------------
	//홍익
	//즐겨찾기한 영화 가져오기
		public List<UserDto> getFavoriteMovie(int useq);

		//영화 추가
		 public boolean updateFavoriteMovie (UserDto udto);
		 
		 
		//유저 즐찾 확인
		public UserDto chkFavorite(int useq);
		   

		//영화즐찾삭제
		 public boolean delFavoriteMovie(UserDto udto);
	
	
	
}
