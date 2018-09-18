package com.mint.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mint.project.daos.IStarpointDao;
import com.mint.project.daos.ITasteDao;
import com.mint.project.dtos.StarpointDto;
import com.mint.project.dtos.TasteDto;


@Service
public class StarpointServiceImp implements IStarpointService {
	@Autowired
	private IStarpointDao starpointDao;
	@Autowired
	private ITasteDao tasteDao;
	
	//소진 수정
	@Transactional
	@Override
	public boolean insertStarpoint(StarpointDto sdto, TasteDto tdto) {
		boolean isS=tasteDao.updateTaste(tdto);
		return starpointDao.insertStarpoint(sdto);
	}
	
	@Transactional
	@Override
	public boolean updateStarpoint(StarpointDto sdto, TasteDto tdto) {
		boolean isS=tasteDao.updateTaste(tdto);
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
	
	//별점 8점이상 영화번호/평점 가져오기
	@Override
	public List<StarpointDto> getHighpointMovie(){
		return starpointDao.getHighpointMovie();
	}
	
	//개인 별점 선호 높은 순	
	public List<StarpointDto> getUserhighmovie(int suseq){
		return starpointDao.getUserhighmovie(suseq);
	};
	
	//개인 별점 선호 높은 순 전체	
	public List<StarpointDto> getUserhighmovie2(int suseq){
		return starpointDao.getUserhighmovie(suseq);
	};

}
