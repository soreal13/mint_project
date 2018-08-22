package com.mint.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mint.project.dtos.ReviewDto;


@Service
public class ReviewServiceImp implements IReviewService {
	@Autowired
	private IReviewDao reviewDao;
	@Override
	public int insertReview(ReviewDto rdto) {
		// TODO Auto-generated method stub
		return reviewDao.insertReview(rdto);
	}

	@Override
	public boolean updateReview(ReviewDto rdto) {
		// TODO Auto-generated method stub
		return reviewDao.updateReview(rdto);
	}

	@Override
	public boolean delReview(int rseq) {
		// TODO Auto-generated method stub
		return reviewDao.delReview(rseq);
	}

	@Override
	public List<ReviewDto> getMovieReview(int mseq) {
		// TODO Auto-generated method stub
		return reviewDao.getMovieReview(mseq);
	}

	@Override
	public List<ReviewDto> getUserReview(int useq) {
		// TODO Auto-generated method stub
		return reviewDao.getUserReview(useq);
	}

	@Override
	public List<ReviewDto> getAllReview() {
		// TODO Auto-generated method stub
		return reviewDao.getAllReview();
	}

	@Override
	public boolean updateUp(int rseq, int useq) {
		// TODO Auto-generated method stub
		return reviewDao.updateUp(rseq,useq);
	}

	@Override
	public boolean updateDown(int rseq, int useq) {
		// TODO Auto-generated method stub
		return reviewDao.updateDown(rseq,useq);
	}
	@Override
	public List<ReviewDto> chkReview(int useq) {
		// TODO Auto-generated method stub
		return reviewDao.chkReview(useq);
	}


}
