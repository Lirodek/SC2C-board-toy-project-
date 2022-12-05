package com.org.proj.service;

import java.util.List;

import com.org.proj.domain.FileVo;

public interface FileService {
	
	//파일목록을 db에서 가져옵니다.
	List<FileVo> selectFileList() throws Exception;
}
