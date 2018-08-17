package com.mint.project.daos;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mint.project.dtos.MovieDto;


@Repository
public class MovieDaoImp implements IMovieDao {

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
	public List<MovieDto> getCertainMovieinfo(String search) {
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
