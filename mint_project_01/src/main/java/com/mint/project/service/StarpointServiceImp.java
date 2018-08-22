package com.mint.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mint.project.dtos.StarpointDto;


@Service
public class StarpointServiceImp implements IStarpointService {
	@Autowired
	private IStarpointDao starpointDao;
	@Override
	public int insertStarpoint(StarpointDto sdto) {
		
		return starpointDao.insertStarpoint(sdto);
	}

	@Override
	public boolean updateStarpoint(StarpointDto sdto) {
		// TODO Auto-generated method stub
		return starpointDao.updateStarpoint(sdto);
	}

	@Override
	public StarpointDto getOneStarpoint(int useq, int mseq) {
		// TODO Auto-generated method stub
		return starpointDao.getOneStarpoint(useq,mseq);
	}

	@Override
	public List<StarpointDto> getUserStarpoint(int useq) {
		// TODO Auto-generated method stub
		return starpointDao.getUserStarpoint(useq);
	}

	@Override
	public List<StarpointDto> getMovieStarpoint(int mseq) {
		// TODO Auto-generated method stub
		return starpointDao.getMovieStarpoint(mseq);
	}

	@Override
	public List<StarpointDto> getAllstarpoint() {
		// TODO Auto-generated method stub
		return starpointDao.getAllstarpoint();
	}

}
