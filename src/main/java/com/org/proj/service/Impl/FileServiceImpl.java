package com.org.proj.service.Impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import com.org.proj.domain.FileVo;
import com.org.proj.service.FileService;

@Service("fileService")
public class FileServiceImpl implements FileService{
	
	private static final Logger log = LoggerFactory.getLogger(FileServiceImpl.class);

	@Override
	public List<FileVo> selectFileList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	

	/*
	@Override
	public List<FileVo> selectFileList() throws Exception {
		// TODO Auto-generated method stub
		return ;
	}*/

}
