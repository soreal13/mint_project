package com.mint.project.daos;

import java.util.List;

import com.mint.project.dtos.StarpointDto;

public interface IStarpointDao {

	
//	-별점 (StarpointDaoImp.java)
//	insertStarpoint
//	updateStarpoint
//	getOneStarpoint (유저&영화로 셀렉트)
//	getUserStarpoint
//	getMovieStarpoint
//	getAllStarpoint
	
	//초기 별점정보 생성
	public int insertStarpoint(StarpointDto sdto);
	
	//별점 정보 수정
	public boolean updateStarpoint(StarpointDto sdto);
	
	//유저&영화로 특정 별점 셀렉트 == 해당영화 별점 줬는지안줬는지 판단을위한메소드임
	public StarpointDto getOneStarpoint(int useq, int mseq);
	
	//유저 평가한 별점목록
	public List<StarpointDto> getUserStarpoint(int useq);
	
	//영화별 별점목록
	public List<StarpointDto> getMovieStarpoint(int mseq);
	
	//전체 별점목록
	public List<StarpointDto> getAllstarpoint();
	
	
	
}
