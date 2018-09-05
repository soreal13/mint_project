package com.mint.project.aop;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;

import com.mint.project.dtos.GenreDto;
import com.mint.project.dtos.MovieDto;
import com.mint.project.dtos.TasteDto;
import com.mint.project.service.GenreServiceImp;
import com.mint.project.service.MovieServiceImp;
import com.mint.project.service.TasteServiceImp;

public class TasteAop {
	
	@Autowired
	MovieServiceImp mService;
	
	@Autowired
	GenreServiceImp gService;
	
	@Autowired
	TasteServiceImp tService;
	
	
	//<--김소진 작성코드 
	
	//별점 환산점수
	public int scalePoint(int starpoint) {
		//일단 정수로 그냥 들어감 ㅠㅠ 로그함수 나중에 하자 
		//일단 long값은 나중에 버전업으로 하기로
		
		return starpoint; 
	}
	
	//영화의 취향 키워드 받아와서 , 기준으로 나누기
	public String[] askKeyword(String mkeyw) {				
		
		String keyword[] = mkeyw.split(", ");
		return keyword;		
		
	}
	
	//한글로 된 키워드에 맞게 tdto의 키워드값에 별점 넣기
	public TasteDto pointToTaste (TasteDto tdto, String[] keyword, int starpoint) {		
		
		for(int i=0; i<keyword.length; i++) {
			
			if(keyword[i].equals("액션")) {
				int score=tdto.getTaction();
				score= score + starpoint;
				tdto.setTaction(score);
			} else if(keyword[i].equals("코미디")) {
				int score=tdto.getTcomedy();
				score= score+ starpoint;
				tdto.setTcomedy(score);
			}else if(keyword[i].equals("범죄")) {
				int score=tdto.getTcrime();
				score= score+ starpoint;
				tdto.setTcrime(score);
			}else if(keyword[i].equals("다큐멘터리")) {
				int score=tdto.getTdocumentary();
				score= score+ starpoint;
				tdto.setTdocumentary(score);
			}else if(keyword[i].equals("드라마")) {
				int score=tdto.getTdrama();
				score= score+ starpoint;
				tdto.setTdrama(score);
			}else if(keyword[i].equals("가족")) {
				int score=tdto.getTfamily();
				score= score+ starpoint;
				tdto.setTfamily(score);
			}else if(keyword[i].equals("판타지")) {
				int score=tdto.getTfantasy();
				score= score+ starpoint;
				tdto.setTfantasy(score);
			}else if(keyword[i].equals("느와르")) {
				int score=tdto.getTnoir();
				score= score+ starpoint;
				tdto.setTnoir(score);
			}else if(keyword[i].equals("공포")) {
				int score=tdto.getThorror();
				score= score+ starpoint;
				tdto.setThorror(score);
			}else if(keyword[i].equals("뮤지컬")) {
				int score=tdto.getTmusical();
				score= score+ starpoint;
				tdto.setTmusical(score);
			}else if(keyword[i].equals("미스터리")) {
				int score=tdto.getTmystery();
				score= score+ starpoint;
				tdto.setTmystery(score);
			}else if(keyword[i].equals("로맨스")) {
				int score=tdto.getTromance();
				score= score+ starpoint;
				tdto.setTromance(score);
			}else if(keyword[i].equals("SF")) {
				int score=tdto.getTsf();
				score= score+ starpoint;
				tdto.setTsf(score);
			}else if(keyword[i].equals("스포츠")) {
				int score=tdto.getTsports();
				score= score+ starpoint;
				tdto.setTsports(score);
			}else if(keyword[i].equals("스릴러")) {
				int score=tdto.getTthriller();
				score= score+ starpoint;
				tdto.setTthriller(score);
			}else if(keyword[i].equals("전쟁")) {
				int score=tdto.getTwar();
				score= score+ starpoint;
				tdto.setTwar(score);
			}else if(keyword[i].equals("자동차")) {
				int score=tdto.getTcar();
				score= score+ starpoint;
				tdto.setTcar(score);
			}else if(keyword[i].equals("토끼")) {
				int score=tdto.getTrabbit();
				score= score+ starpoint;
				tdto.setTrabbit(score);
			}else if(keyword[i].equals("애니메이션")) {
				int score=tdto.getTanimation();
				score= score+ starpoint;
				tdto.setTanimation(score);
			}else if(keyword[i].equals("어린이")) {
				int score=tdto.getTchildren();
				score= score+ starpoint;
				tdto.setTchildren(score);
			}else if(keyword[i].equals("사극")) {
				int score=tdto.getThistory();
				score= score+ starpoint;
				tdto.setThistory(score);
			}else if(keyword[i].equals("로코")) {
				int score=tdto.getTroco();
				score= score+ starpoint;
				tdto.setTroco(score);
			}else if(keyword[i].equals("재난")) {
				int score=tdto.getTdisaster();
				score= score+ starpoint;
				tdto.setTdisaster(score);
			}else if(keyword[i].equals("무협")) {
				int score=tdto.getTwuxia();
				score= score+ starpoint;
				tdto.setTwuxia(score);
			}else if(keyword[i].equals("서부")) {
				int score=tdto.getTwestern();
				score= score+ starpoint;
				tdto.setTwestern(score);
			}else if(keyword[i].equals("미남")) {
				int score=tdto.getThotguy();
				score= score+ starpoint;
				tdto.setThotguy(score);
			}else if(keyword[i].equals("하이틴")) {
				int score=tdto.getThighteen();
				score= score+ starpoint;
				tdto.setThighteen(score);
			}
			
		}
		
		return tdto;
	}
	
	
	

	//초기영화 30개 정보 들고오기
	public HashMap<String, MovieSet> initTasteMovie(){
				
//		ArrayList<MovieDto> initmovie = new ArrayList<MovieDto>();
//		ArrayList<GenreDto> initgenre = new ArrayList<GenreDto>();
		
		MovieDto initmovie = new MovieDto();
		GenreDto initgenre = new GenreDto();
		
		HashMap<String, MovieSet> initmap = new HashMap<String, MovieSet>();

		
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
