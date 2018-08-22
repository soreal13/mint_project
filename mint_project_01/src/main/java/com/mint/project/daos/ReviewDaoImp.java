package com.mint.project.daos;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.mint.project.dtos.ReviewDto;



@Repository
public class ReviewDaoImp implements IReviewDao {

	@Autowired
	   private SqlSessionTemplate sqlSession;
	   private String namespace="com.mint.project.daos";
	
	@Override
	public int insertReview(ReviewDto rdto) {
		 int count=0;
	      count=sqlSession.insert(namespace+"insertReview", rdto);
	      return count>0?true:false;
	}

	@Override
	public boolean updateReview(ReviewDto rdto) {
		 int count=sqlSession.update(namespace+"updateReview",rdto);
	      return count>0?true:false;
	}

	@Override
	public boolean delReview(int rseq) {
		int count=0;
		count=sqlSession.delete(namespace+"delReview", rseq);
		return count>0?true:false;
	}

	@Override
	public List<ReviewDto> getMovieReview(int mseq) {
		 return sqlSession.selectList(namespace+"getMovieReview",mseq);
	}

	@Override
	public List<ReviewDto> getUserReview(int useq) {
		 return sqlSession.selectList(namespace+"getUserReview",useq);
	}

	@Override
	public List<ReviewDto> getAllReview() {
		 return sqlSession.selectList(namespace+"getAllReview");
	}

	@Override
	public boolean updateUp(int rseq, int useq) {
		Map<String, Integer> map=new HashMap<>();
		
	    map.put("rseq", rseq);
	    map.put("useq", useq);
	    int count=sqlSession.update(namespace+"updateUp",map);
	    return count>0?true:false;
		
	}
	@Override
	public boolean updateDown(int rseq, int useq) {
		Map<String, Integer> map=new HashMap<>();
		
	    map.put("rseq", rseq);
	    map.put("useq", useq);
	    int count=sqlSession.update(namespace+"updateDown",map);
	    return count>0?true:false;
	};
	
	@Override
	public List<ReviewDto> chkReview(int useq) {
		return sqlSession.selectList(namespace+"chkReview",useq);
	};

}
