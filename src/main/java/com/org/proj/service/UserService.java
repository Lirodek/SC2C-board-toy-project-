package com.org.proj.service;

import com.org.proj.domain.UserVo;

public interface UserService {
	
	public UserVo login(UserVo vo) throws Exception;
	
	// 회원가입 (모든정보)
	public void signup(UserVo dto) throws Exception;
	
	// 이메일 회원체크 (모든정보)
	public int email_check(UserVo dto) throws Exception;
	
	// sns로그인 (모든정보)
	public UserVo sns_login(UserVo dto) throws Exception;
}
