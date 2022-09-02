package com.org.proj.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserVo {
	private String user_idname; //아이디    (sns로그인시 없음)
	private String user_password; //비밀번호 (sns로그인시 없음)
	private String user_nickName; // 닉네임  (sns로그인시 랜덤닉)
	private int user_warning;     // 경고횟수 초기 0
	private String user_visible;  // 유저 삭제 - 정지시 0으로
	private int user_un;          // user un 유저 고유번호
	private String user_profile;  // 유저 프로필 사진
	private String user_email;    // 유저 이메일 (sns 로그인시 필수, 추후 인증으로 생성가능)
}

