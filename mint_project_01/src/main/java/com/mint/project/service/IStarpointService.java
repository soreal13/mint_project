package com.mint.project.service;

import java.util.List;

import com.mint.project.dtos.StarpointDto;
import com.mint.project.dtos.TasteDto;

public interface IStarpointService {

   //초기 별점정보 생성
   public boolean insertStarpoint(StarpointDto sdto, TasteDto tdto);
   
   //별점 정보 수정
   public boolean updateStarpoint(StarpointDto sdto, TasteDto tdto);
   
   //유저&영화로 특정 별점 셀렉트
   public StarpointDto getOneStarpoint(int useq, int mseq);
   
   //유저 평가한 별점목록
   public List<StarpointDto> getUserStarpoint(int useq);
   
   //영화별 별점목록
   public List<StarpointDto> getMovieStarpoint(int mseq);
   
   //전체 별점목록
   public List<StarpointDto> getAllstarpoint();
 //별점 높은 순대로 가져오기
 	public List<StarpointDto> getHighpointMovie();
 	
	//개인 별점 선호 높은 순	
	public List<StarpointDto> getUserhighmovie(int suseq);
 	
 	
	//개인 별점 선호 높은 순 전체
	public List<StarpointDto> getUserhighmovie2(int suseq);
 	
 	
   
}
