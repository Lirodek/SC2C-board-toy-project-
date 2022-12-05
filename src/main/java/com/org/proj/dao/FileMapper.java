package com.org.proj.dao;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

import com.org.proj.domain.FileVo;



@Configuration
@MapperScan("com.org.proj.dao.FileMapper")
public interface FileMapper {
	
	
	public List<FileVo> selectFileList() throws Exception;
	
	
}
	
