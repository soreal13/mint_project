package com.mint.project.daos;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mint.project.dtos.MovieDto;


@Repository
public class MovieDaoImp implements IMovieDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private String namespace="com.mint.project.movie.";
	
	@Override
	public int insertMovie(MovieDto mdto) {
		return sqlSession.insert(namespace+"insertmovie",mdto);
	}

	@Override
	public boolean updateMovie(MovieDto mdto) {
		int count=sqlSession.update(namespace+"updatemovie",mdto);
		return count>0?true:false;
	}

	@Override
	public boolean delMovie(int mseq) {
		int count=sqlSession.delete(namespace+"delmovie",mseq);
		return count>0?true:false;
	}

	@Override
	public MovieDto getMovieinfo(int mseq) {
		return sqlSession.selectOne(namespace+"getmovieinfo",mseq);
	}

	@Override
	public List<MovieDto> getCertainMovieinfo(String search) {
		return sqlSession.selectOne(namespace+"getcertainmovieinfo",search);
	}

	@Override
	public List<MovieDto> getAllMovieinfo() {
		return sqlSession.selectList(namespace+"getallmovieinfo");
	}
//-------------------------------------------------------------------------------------------------
	@Override
	public boolean updateFollow(int useq) {
		int count=sqlSession.update(namespace+"updatefollow",useq);
		return count>0?true:false;
	}

	@Override
	public boolean chkFollow(int useq) {
		int count=sqlSession.selectOne(namespace+"chkfollow",useq);
		return count>0?true:false;
	}
	
	@Override
	public boolean delFollow(int useq) {
		int count=sqlSession.update(namespace+"delfollow",useq);
		return count>0?true:false;
	}

}
