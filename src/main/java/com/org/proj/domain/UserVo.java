package com.org.proj.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserVo {
	private String user_idname;
	private String user_password;
	private String user_nickName;
	private int user_warning;
	private String user_visible;
	private int user_un;
	private String user_profile;
	private String user_email;
}

