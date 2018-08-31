package com.mint.project.daos;

import java.util.List;

import com.mint.project.dtos.ReviewDto;

public interface IReviewDao {
	
//	insertReview
//	updateReview
//	delReview
//	getMovieReview
//	getUserReview
//	getAllReview
//	updateUp 공감 + -
//	updateDown 비공감 + -
	//asdfkasdfjklasdfjklasdfjklasdfjklasdfkl
	
	//후기 생성
	public boolean insertReview(ReviewDto rdto);

	//후기수정
	public boolean updateReview(ReviewDto rdto);
	
	//후기 삭제
	public boolean delReview(int rseq);
	
	//영화별후기
	public List<ReviewDto> getMovieReview(int mseq);
	
	//유저후기
	public List<ReviewDto> getUserReview(int useq);
	
	//모든 후기 정보
	public List<ReviewDto> getAllReview();
	
	//후기 공감
	public boolean updateUp(int rseq, int useq);
	
	//후기 공감 취소
	public boolean updateDown(int rseq, int useq);
	
	//공감 눌렀는지 확인
	public List<ReviewDto> chkReview(int useq);
	
	
}
