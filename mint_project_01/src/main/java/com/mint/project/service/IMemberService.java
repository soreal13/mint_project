package com.mint.project.service;

import com.mint.project.dtos.UserDto;

public interface IMemberService {

	
	//chkEmail 이메일 중복체크 /존재확인(비번찾기)
	//chkNick 별명 중복체크 (가입시)
	//register 가입
	//login 로그인
	
	//이메일 체크	
	public UserDto chkEmail(String uemail);
		
	//별명 체크
	public UserDto chkNick(String unick);
	
	//가입
	public boolean register(UserDto udto);
		 
	//로그인
	public UserDto login(String uemail, String upwd);
	
	//회원정보가져오기(pwd제외)
	public UserDto getUserinfo(UserDto udto);
		
//	public String kakaoLogin();	
	
	
}
