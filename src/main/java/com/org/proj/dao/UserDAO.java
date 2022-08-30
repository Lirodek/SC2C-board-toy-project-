package com.org.proj.dao;

import com.org.proj.domain.UserVo;

public interface UserDAO {

	/**
	 * 아이디 비밀번호 로그인
	 * @param vo
	 * @return user
	 */
	public UserVo userLogin(UserVo vo) throws Exception;
}
