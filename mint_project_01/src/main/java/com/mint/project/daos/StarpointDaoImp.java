package com.mint.project.daos;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mint.project.dtos.StarpointDto;


@Repository
public class StarpointDaoImp implements IStarpointDao {
	@Autowired
	   private SqlSessionTemplate sqlSession;
	   private String namespace="com.mint.project.daos";
	
	@Override
	public int insertStarpoint(StarpointDto sdto) {
		  int count=0;
	      count=sqlSession.insert(namespace+"insertStarpoint", sdto);
	      return count>0?true:false;
	}

	@Override
	public boolean updateStarpoint(StarpointDto sdto) {
		 int count=sqlSession.update(namespace+"updateStarpoint",sdto);
	      return count>0?true:false;
	}

	@Override
	public StarpointDto getOneStarpoint(int useq, int mseq) {
		Map<String, Integer> map=new HashMap<>();
		
	    map.put("useq", useq);
	    map.put("mseq", mseq);

		
		int count=sqlSession.selectOne(namespace+"getOneStarpoint",map);
		return count>0?true:false;
	}

	@Override
	public List<StarpointDto> getUserStarpoint(int useq) {
		return sqlSession.selectList(namespace+"getUserStarpoint",useq);
	}

	@Override
	public List<StarpointDto> getMovieStarpoint(int mseq) {
		return sqlSession.selectList(namespace+"getMovieStarpoint",mseq);
	}

	@Override
	public List<StarpointDto> getAllstarpoint() {
		return sqlSession.selectList(namespace+"getAllstarpoint");
	}

}
