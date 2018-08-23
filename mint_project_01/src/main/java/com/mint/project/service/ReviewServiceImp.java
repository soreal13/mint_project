package com.mint.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mint.project.daos.IReviewDao;
import com.mint.project.dtos.ReviewDto;


@Service
public class ReviewServiceImp implements IReviewService {
	@Autowired
	private IReviewDao reviewDao;
	@Override
	public boolean insertReview(ReviewDto rdto) {
		return reviewDao.insertReview(rdto);
	}

	@Override
	public boolean updateReview(ReviewDto rdto) {
		return reviewDao.updateReview(rdto);
	}

	@Override
	public boolean delReview(int rseq) {
		return reviewDao.delReview(rseq);
	}

	@Override
	public List<ReviewDto> getMovieReview(int mseq) {
		return reviewDao.getMovieReview(mseq);
	}

	@Override
	public List<ReviewDto> getUserReview(int useq) {
		return reviewDao.getUserReview(useq);
	}

	@Override
	public List<ReviewDto> getAllReview() {
		return reviewDao.getAllReview();
	}

	@Override
	public boolean updateUp(int rseq, int useq) {
		return reviewDao.updateUp(rseq,useq);
	}

	@Override
	public boolean updateDown(int rseq, int useq) {
		return reviewDao.updateDown(rseq,useq);
	}
	@Override
	public List<ReviewDto> chkReview(int useq) {
		return reviewDao.chkReview(useq);
	}


}
