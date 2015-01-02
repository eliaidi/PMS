package com.liaochente.pms.usermanager.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bean.UserInfo;

import com.liaochente.pms.ordermanager.dao.OrderDao;
import com.liaochente.pms.usermanager.dao.UserManagerDao;
import com.liaochente.pms.usermanager.service.UserManagerService;
import com.liaochente.pms.util.CommonUtil;

public class UserManagerServiceImpl implements UserManagerService {

	private UserManagerDao dao;

	public UserManagerDao getDao() {
		return dao;
	}

	public void setDao(UserManagerDao dao) {
		this.dao = dao;
	}

}
