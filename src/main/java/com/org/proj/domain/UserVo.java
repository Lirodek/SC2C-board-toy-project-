package com.org.proj.domain;

import lombok.Data;

@Data
public class UserVo {
	private String userIdname; //아이디    (sns로그인시 없음)
	private String userPassword; //비밀번호 (sns로그인시 없음)
	private String userNickName; // 닉네임  (sns로그인시 랜덤닉)
	private int userWarning;     // 경고횟수 초기 0
	private String userVisible;  // 유저 삭제 - 정지시 0으로
	private int userUn;          // user un 유저 고유번호
	private String userProfile;  // 유저 프로필 사진
	private String userEmail;    // 유저 이메일 (sns 로그인시 필수, 추후 인증으로 생성가능)
}

