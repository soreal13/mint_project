package com.mint.project.daos;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mint.project.dtos.GenreDto;


@Repository
public class GenreDaoImp implements IGenreDao {

	@Override
	public int insertGenre(GenreDto gdto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean updateGenre(GenreDto gdto) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public GenreDto getGenre(int mseq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<GenreDto> getAllGenre() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delGenre(int mseq) {
		// TODO Auto-generated method stub
		return false;
	}

}
