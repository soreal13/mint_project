package com.mint.project.daos;

import org.springframework.stereotype.Repository;

import com.mint.project.dtos.TasteDto;

@Repository
public class TasteDaoImp implements ITasteDao {

	@Override
	public int insertTaste(TasteDto tdto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public TasteDto getTaste(int useq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateTaste(TasteDto tdto) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteTaste(int useq) {
		// TODO Auto-generated method stub
		return false;
	}

}
