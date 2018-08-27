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
		return mdao.insertMovie(mdto);
	}

	@Override
	public boolean updateMovie(MovieDto mdto) {
		return mdao.updateMovie(mdto);
	}

	@Override
	public boolean delMovie(int mseq) {
		return mdao.delMovie(mseq);
	}

	@Override
	public MovieDto getMovieinfo(int mseq) {
		return mdao.getMovieinfo(mseq);
	}
	
	@Override
	public List<MovieDto> getCertainMovieinfo(String search) {
		return mdao.getCertainMovieinfo(search);
	}
	
	@Override
	public List<MovieDto> getAllMovieinfo() {
		return mdao.getAllMovieinfo();

	}

	@Override
	public boolean updateFollow(int useq) {
		return mdao.updateFollow(useq);
	}
	
	@Override
	public boolean chkFollow(int useq) {
		return mdao.chkFollow(useq);
	}
	
	@Override
	public boolean delFollow(int useq) {
		return mdao.delFollow(useq);
	}


	

}
