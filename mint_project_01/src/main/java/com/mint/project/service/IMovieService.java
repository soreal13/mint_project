package com.mint.project.service;

import java.util.List;

import com.mint.project.dtos.MovieDto;

public interface IMovieService {


	// 영화신규추가
	public int insertMovie(MovieDto mdto);

	// 영화정보수정	
	public boolean updateMovie(MovieDto mdto);
	
	// 영화삭제
	public boolean delMovie(int mseq);
	
	// 영화한편정보
	public MovieDto getMovieinfo(int mseq);
	
	// 영화전체정보
	public List<MovieDto> getAllMovieinfo();
	
	// 팔로우 유저 추가, 삭제
	public boolean updateFollow(int useq);
	
	
	
	
}
