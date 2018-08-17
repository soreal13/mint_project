package com.mint.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mint.project.dtos.ReviewDto;


@Service
public class ReviewServiceImp implements IReviewService {

	@Override
	public int insertReview(ReviewDto rdto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean updateReview(ReviewDto rdto) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delReview(int rseq) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<ReviewDto> getMovieReview(int mseq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ReviewDto> getUserReview(int useq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ReviewDto> getAllReview() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateUp(int rseq, int useq) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateDown(int rseq, int useq) {
		// TODO Auto-generated method stub
		return false;
	}

}
