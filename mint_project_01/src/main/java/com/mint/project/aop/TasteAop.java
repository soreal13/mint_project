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
   
   
   //<--김소진 작성코드 --->
   
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
            
//      ArrayList<MovieDto> initmovie = new ArrayList<MovieDto>();
//      ArrayList<GenreDto> initgenre = new ArrayList<GenreDto>();
      
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
   
   
   
   //취향 점수 중 높은 값 골라내서 그 이름 반납하기
   public String getKeyw(TasteDto tdto) {
      
      //회원 취향 가져오기      
      
      //배열 생성  (17개 장르 단 국내/외 장르 제외임
      int [] num = new int[27];
      
      num[0]=tdto.getTaction();
      num[1]=tdto.getTcomedy();
      num[2]=tdto.getTcrime();
      num[3]=tdto.getTdocumentary();
      num[4]=tdto.getTdrama();
      num[5]=tdto.getTfamily();
      num[6]=tdto.getTfantasy();
      num[7]=tdto.getTnoir();
      num[8]=tdto.getThorror();
      num[9]=tdto.getTmusical();
      num[10]=tdto.getTmystery();
      num[11]=tdto.getTromance();
      num[12]=tdto.getTsf();
      num[13]=tdto.getTsports();
      num[14]=tdto.getTthriller();
      num[15]=tdto.getTwar();
      num[16]=tdto.getTcar();
      num[17]=tdto.getTrabbit();
      num[18]=tdto.getTanimation();
      num[19]=tdto.getTchildren();
      num[20]=tdto.getThistory();
      num[21]=tdto.getTroco();
      num[22]=tdto.getTdisaster();
      num[23]=tdto.getTwuxia();
      num[24]=tdto.getTwestern();
      num[25]=tdto.getThotguy();
      num[26]=tdto.getThighteen();
            
      //배열값 초기화      
      int max= num[0];
      int trace= 0;
      String keyw="";
            
      //num[i]값 max보다 크면 max에 담는다.
      for(int i=1; i<num.length; i++) {
         if(num[i]>max) {
            max=num[i];
            trace=i;
         }
      }
      
      if (trace==0) {
         keyw="액션";
      }else if(trace==1) {
         keyw="코미디";
      }else if(trace==2) {
         keyw="범죄";
      }else if(trace==3) {
         keyw="다큐멘터리";
      }else if(trace==4) {
         keyw="드라마";
      }else if(trace==5) {
         keyw="가족";
      }else if(trace==6) {
         keyw="판타지";
      }else if(trace==7) {
         keyw="느와르";
      }else if(trace==8) {
         keyw="공포";
      }else if(trace==9) {
         keyw="뮤지컬";
      }else if(trace==10) {
         keyw="미스터리";
      }else if(trace==11) {
         keyw="로맨스";
      }else if(trace==12) {
         keyw="SF";
      }else if(trace==13) {
         keyw="스포츠";
      }else if(trace==14) {
         keyw="스릴러";
      }else if(trace==15) {
         keyw="전쟁";
      }else if(trace==16) {
         keyw="자동차";
      }else if(trace==17) {
         keyw="토끼";
      }else if(trace==18) {
         keyw="애니메이션";
      }else if(trace==19) {
         keyw="아동";
      }else if(trace==20) {
         keyw="역사";
      }else if(trace==21) {
         keyw="로코";
      }else if(trace==22) {
         keyw="재난";
      }else if(trace==23) {
         keyw="무협";
      }else if(trace==24) {
         keyw="서부";
      }else if(trace==25) {
         keyw="미남";
      }else if(trace==26) {
         keyw="하이틴";
      }
      
      return keyw;
      
   }


   
   
   
   
}