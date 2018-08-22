package com.mint.project.service;

import java.util.List;

import com.mint.project.dtos.ReviewDto;

public interface IReviewService {

	
	//후기 생성
	public int insertReview(ReviewDto rdto);

	//후기수정
	public boolean updateReview(ReviewDto rdto);
	
	//후기삭제
	public boolean delReview(int rseq);
	
	//영화별후기불러옴
	public List<ReviewDto> getMovieReview(int mseq);
	
	//유저후기불러옴
	public List<ReviewDto> getUserReview(int useq);
	
	//모든 후기 정보
	public List<ReviewDto> getAllReview();
	

	
}
