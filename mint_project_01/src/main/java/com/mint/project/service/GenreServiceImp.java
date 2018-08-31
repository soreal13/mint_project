package com.mint.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mint.project.daos.IGenreDao;
import com.mint.project.dtos.GenreDto;
@Service
public class GenreServiceImp implements IGenreService {
	
	@Autowired
	private IGenreDao gdao;
	
	@Override
	public boolean insertGenre(GenreDto gdto) {
		return gdao.insertGenre(gdto);
	}

	@Override
	public GenreDto getGenre(int mseq) {
		return gdao.getGenre(mseq);
	}

	@Override
	public List<GenreDto> getAllGenre() {
		return gdao.getAllGenre();
	}

	@Override
	public boolean updateGenre(GenreDto gdto) {
		return gdao.updateGenre(gdto);
	}

	@Override
	public boolean delGenre(int mseq) {
		return gdao.delGenre(mseq);
	}

}
