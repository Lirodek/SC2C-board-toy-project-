package com.org.proj.dao.Impl;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.org.proj.dao.UserDAO;
import com.org.proj.domain.UserVo;

@Repository
public class UserDaoImpl implements UserDAO{

	@Inject
	SqlSession session;
	
	private static String nameSpace = "com.org.proj.mappers.user";
	
	@Override
	public UserVo userLogin(UserVo vo) throws Exception {
		// TODO Auto-generated method stub
		
		return session.selectOne(nameSpace + ".login", vo) ;
	}

}
