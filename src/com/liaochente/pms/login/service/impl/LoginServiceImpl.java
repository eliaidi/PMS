package com.liaochente.pms.login.service.impl;

import java.util.List;

import bean.UserInfo;

import com.liaochente.pms.login.dao.LoginDao;
import com.liaochente.pms.login.service.LoginService;
import com.liaochente.pms.util.CommonUtil;

public class LoginServiceImpl implements LoginService {

	private LoginDao loginDao;

	public LoginDao getLoginDao() {
		return loginDao;
	}

	public void setLoginDao(LoginDao loginDao) {
		this.loginDao = loginDao;
	}

	/**
	 * 登录校验方法
	 */
	public UserInfo login(String username, String password) {
		List<UserInfo> list = loginDao.selectUserInfo(username);
		if (CommonUtil.isNotNullToList(list)) {
			UserInfo userInfo = list.get(0);
			if (userInfo.getPassword().equals(password)) {
				return userInfo;
			}
		}
		return null;
	}

	public UserInfo insertUserInfo(UserInfo userInfo) {
		int id = loginDao.insertUserInfo(userInfo);
		if (id != 0) {
			return userInfo;
		} else {
			return null;
		}
	}
}
