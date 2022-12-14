package com.org.proj.dao;

import com.org.proj.domain.UserVo;

public interface UserDAO {

	/**
	 * 아이디 비밀번호 로그인
	 * @param vo
	 * @return user
	 */
	public UserVo userLogin(UserVo vo) throws Exception;
	
	// 회원가입 (모든정보)
	public void signup(UserVo vo) throws Exception;
	
	// 회원가입 (모든정보)
	public void signup_main(UserVo vo) throws Exception;
	
	// 회원가입 (모든정보)
	public int email_check(UserVo vo) throws Exception;
	
	// 회원가입 (모든정보)
	public UserVo sns_login(UserVo vo) throws Exception;
	
	// ajax 아이디 중복여부 확인
	public int checkId(UserVo vo) throws Exception;
	
	// ajax 아이디 중복여부 확인
	public int checkNickName(UserVo vo) throws Exception;
}
