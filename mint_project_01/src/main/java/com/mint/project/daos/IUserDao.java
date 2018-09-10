package com.mint.project.daos;

import java.util.List;

import com.mint.project.dtos.UserDto;

public interface IUserDao {


// 자동로그인 관련 추가 필요   
   
   
   //이메일중복체크 -   
   public UserDto chkEmail(String uemail);
      
   //별명 중복체크 -
   public UserDto chkNick(String unick);
   
   //가입 -
   public boolean register(UserDto udto);
       
   //로그인 -
   public UserDto login(UserDto udto);
   
   //프로필이미지변경 -
   public boolean updateUimg (UserDto udto);
   
   //유저정보 업데이트 -
   public int updateUserinfo(UserDto udto);   
          
   //회원탈퇴 -
   public boolean delUser(int useq);
         
   //회원정보가져오기(pwd제외) -
   public UserDto getUserinfo(UserDto udto);
         
 //유저가 쓴 리뷰 가져오기
   public List<UserDto> getUserReview(int useq);
   
   //유저가 쓴 리뷰삭제
   public boolean delRe(int useq);

//	-------------------------------------------------------
   
   //즐겨찾기한 영화 가져오기
   public List<UserDto> getFavoriteMovie(String[] seqs);
   
//	-------------------------------------------------------

 //영화 추가
   public boolean updateFavoriteMovie (UserDto udto);

   //유저 즐찾 확인
   public UserDto chkFavorite(int useq);
   

 //영화즐찾삭제
   public boolean delFavoriteMovie(UserDto udto);
      
   //---민지 코드--//

   public List<UserDto> getAlluserinfo();
   
   
	public UserDto getBoardAjax(int Useq);
   
}