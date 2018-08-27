package com.mint.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mint.project.daos.ITasteDao;
import com.mint.project.dtos.TasteDto;

@Service
public class TasteServiceImp implements ITasteService {
    
	@Autowired
	private ITasteDao tdao;
	
	@Override
	public boolean insertTaste(TasteDto tdto) {
		
		return tdao.insertTaste(tdto);
	}

	@Override
	public TasteDto getTaste(int useq) {
		
		return tdao.getTaste(useq);
	}
	
	@Override
	public List<TasteDto> getAllTaste(){
		
		return tdao.getAllTaste();
	}

	@Override
	public boolean updateTaste(TasteDto tdto) {
		
		return tdao.updateTaste(tdto);
	}

	@Override
	public boolean delTaste(int useq) {
		
		return tdao.delTaste(useq);
	}

}
