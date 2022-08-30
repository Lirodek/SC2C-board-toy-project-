package com.org.proj.service.Impl;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.org.proj.dao.UserDAO;
import com.org.proj.domain.UserVo;
import com.org.proj.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Inject
	UserDAO dao;
	
	public UserVo login(UserVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.userLogin(vo);
	}

}
