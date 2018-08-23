package com.mint.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mint.project.daos.IStarpointDao;
import com.mint.project.dtos.StarpointDto;


@Service
public class StarpointServiceImp implements IStarpointService {
	@Autowired
	private IStarpointDao starpointDao;
	@Override
	public boolean insertStarpoint(StarpointDto sdto) {
		
		return starpointDao.insertStarpoint(sdto);
	}

	@Override
	public boolean updateStarpoint(StarpointDto sdto) {
		return starpointDao.updateStarpoint(sdto);
	}

	@Override
	public StarpointDto getOneStarpoint(int useq, int mseq) {
		return starpointDao.getOneStarpoint(useq,mseq);
	}

	@Override
	public List<StarpointDto> getUserStarpoint(int useq) {
		return starpointDao.getUserStarpoint(useq);
	}

	@Override
	public List<StarpointDto> getMovieStarpoint(int mseq) {
		return starpointDao.getMovieStarpoint(mseq);
	}

	@Override
	public List<StarpointDto> getAllstarpoint() {
		return starpointDao.getAllstarpoint();
	}

}
