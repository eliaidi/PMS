package com.liaochente.pms.login.dao;

import java.util.List;
import bean.UserInfo;

public interface LoginDao {

	public List<UserInfo> selectUserInfo(String username);
	
	public int insertUserInfo(UserInfo userInfo);
	
}
