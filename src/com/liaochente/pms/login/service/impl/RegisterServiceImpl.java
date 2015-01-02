package com.liaochente.pms.login.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bean.RegisterUserInfo;
import bean.UserInfo;

import com.liaochente.pms.login.dao.RegisterDao;
import com.liaochente.pms.login.service.RegisterService;
import com.liaochente.pms.usermanager.dao.UserManagerDao;
import com.liaochente.pms.util.CommonUtil;

public class RegisterServiceImpl implements RegisterService {
	private RegisterDao dao;

	private UserManagerDao userDao;

	@Override
	public Map<String, Object> getRegisterTreatyInfo(Map<String, Object> map) {
		Map<String, Object> res = new HashMap<String, Object>();
		List<Map<String, Object>> list = dao.getRegisterTreatyInfo(map);
		if (CommonUtil.isNotNullToList(list)) {
			res = list.get(0);
		}
		return res;
	}

	@Override
	public boolean checkUserName(RegisterUserInfo userInfo) {
		int i = userDao.checkUserName(userInfo.getUsername());
		if (i == 0) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public void registerUserInfo(Map<String, Object> map) {
		userDao.insertUser(map);
	}

	public RegisterDao getDao() {
		return dao;
	}

	public void setDao(RegisterDao dao) {
		this.dao = dao;
	}

	public UserManagerDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserManagerDao userDao) {
		this.userDao = userDao;
	}

}
