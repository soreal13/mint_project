package com.mint.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mint.project.daos.IGenreDao;
import com.mint.project.daos.IMovieDao;
import com.mint.project.dtos.MovieDto;

@Service
public class MovieServiceImp implements IMovieService {

	
	@Autowired
	private IGenreDao gdao;
	@Autowired
	private IMovieDao mdao;
	
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
	public boolean updateFollow(int useq) {
		// TODO Auto-generated method stub
		return false;
	}

}
