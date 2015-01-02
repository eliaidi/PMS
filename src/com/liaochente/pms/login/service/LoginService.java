package com.liaochente.pms.login.service;

import bean.UserInfo;

public interface LoginService {

	public UserInfo login(String username,String password);
	
	public UserInfo insertUserInfo(UserInfo userInfo);
}
