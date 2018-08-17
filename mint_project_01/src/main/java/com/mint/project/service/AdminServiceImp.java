package com.mint.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mint.project.dtos.MovieDto;
import com.mint.project.dtos.ReviewDto;
import com.mint.project.dtos.UserDto;


@Service
public class AdminServiceImp implements IAdminService {

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
	public List<UserDto> getUserinfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ReviewDto> getAllReview() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delReview(int rseq) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int insertMovie(MovieDto mdto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean updateMovie(MovieDto mdto) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delMovie(int mseq) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public MovieDto getMovieinfo(int mseq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MovieDto> getAllMovieinfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MovieDto> getMdpick() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateMdpick(String[] mseq) {
		// TODO Auto-generated method stub
		return false;
	}

}
