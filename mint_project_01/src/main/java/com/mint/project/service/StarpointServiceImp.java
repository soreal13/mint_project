package com.mint.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mint.project.dtos.StarpointDto;


@Service
public class StarpointServiceImp implements IStarpointService {

	@Override
	public int insertStarpoint(StarpointDto sdto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean updateStarpoint(StarpointDto sdto) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public StarpointDto getOneStarpoint(int useq, int mseq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StarpointDto> getUserStarpoint(int useq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StarpointDto> getMovieStarpoint(int mseq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StarpointDto> getAllstarpoint() {
		// TODO Auto-generated method stub
		return null;
	}

}
