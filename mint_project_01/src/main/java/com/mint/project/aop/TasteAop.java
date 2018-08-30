package com.mint.project.aop;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;

import com.mint.project.dtos.GenreDto;
import com.mint.project.dtos.MovieDto;
import com.mint.project.service.GenreServiceImp;
import com.mint.project.service.MovieServiceImp;

public class TasteAop {
	
	@Autowired
	MovieServiceImp mService;
	
	@Autowired
	GenreServiceImp gService;

	//초기영화 30개 정보 들고오기
	public HashMap<String, MovieSet> initTasteMovie(){
				
//		ArrayList<MovieDto> initmovie = new ArrayList<MovieDto>();
//		ArrayList<GenreDto> initgenre = new ArrayList<GenreDto>();
		
		MovieDto initmovie = new MovieDto();
		GenreDto initgenre = new GenreDto();
		
		HashMap<String, MovieSet> initmap = new HashMap<>();

		
		String [] initnum = {"86", "466", "60", "77", "180", "201", "172", "231", "235", "234",
				"224", "237", "312", "288", "303", "305", "364", "320", "318", "345", 
				"382", "475", "393", "406", "370", "450", "454", "425", "431", "486"} ;
				
		for(int i=0; i<initnum.length; i++) {
								
			initmovie=mService.getMovieinfo(Integer.parseInt(initnum[i]));
			initgenre=gService.getGenre(Integer.parseInt(initnum[i]));
						
			initmap.put(initnum[i], new MovieSet(initmovie, initgenre));
			
		}
	
		return initmap; 
	}
	
	
	
	
}
