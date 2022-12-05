package com.org.proj.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class FileVo {
	private String dvsn;
	private Integer sn;
	private String fileAddr;
	private String fileName;
	private String fileExtn;
	private String useYn;
	private String userName;
	private String regDate;
}
