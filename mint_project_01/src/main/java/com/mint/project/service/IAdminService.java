package com.mint.project.service;

import java.util.List;

import com.mint.project.dtos.MovieDto;
import com.mint.project.dtos.ReviewDto;
import com.mint.project.dtos.UserDto;

public interface IAdminService {

	
	//유저관련
	//유저정보 업데이트
	public int updateUserinfo(UserDto udto);	
		   
	//회원탈퇴
	public boolean delUser(int useq);
	
	//회원정보가져오기(pwd제외)
	public List<UserDto> getUserinfo();
	
	
	//리뷰관련
	//모든 후기 정보
	public List<ReviewDto> getAllReview();
	
	//후기삭제
	public boolean delReview(int rseq);
	
	
	//영화관련
	// 영화신규추가
	public int insertMovie(MovieDto mdto);
	
	// 영화정보수정	
	public boolean updateMovie(MovieDto mdto);
	
	// 영화완전삭제
	public boolean delMovie(int mseq);
	
	// 영화한편정보
	public MovieDto getMovieinfo(int mseq);
	
	// 영화전체정보
	public List<MovieDto> getAllMovieinfo();
	
	// MDPICK 영화 정보
	public List<MovieDto> getMdpick();
	
	// MDPICK 영화 내리기 (멀델)
	public boolean updateMdpick(String[] mseq);
	
	
	
	
}
