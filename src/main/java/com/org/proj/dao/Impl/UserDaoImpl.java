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

	@Override
	public void signup(UserVo vo) throws Exception {
		session.insert(nameSpace + ".signup", vo) ;
		
	}
	
	

	@Override
	public int email_check(UserVo vo) throws Exception {
		// TODO Auto-generated method stub
		
		return session.selectOne(nameSpace + ".search_email", vo) ;
		
	}

	@Override
	public UserVo sns_login(UserVo vo) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(nameSpace+ ".sns_login", vo);
	}

	@Override
	public void signup_main(UserVo vo) throws Exception {
		
		session.insert(nameSpace + ".signup_main", vo);
		
	}

	@Override
	public int checkId(UserVo vo) throws Exception {
		System.out.println(vo);
		return session.selectOne(nameSpace+".checkId", vo);
	}

	@Override
	public int checkNickName(UserVo vo) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(nameSpace+".checkNickName", vo);
	}

}
