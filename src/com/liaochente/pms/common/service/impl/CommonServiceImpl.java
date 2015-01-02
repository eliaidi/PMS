package com.liaochente.pms.common.service.impl;

import java.util.List;
import java.util.Map;

import com.liaochente.pms.common.dao.CommonDao;
import com.liaochente.pms.common.service.CommonService;

public class CommonServiceImpl implements CommonService {

	private CommonDao commonDao;
	
	@Override
	public List<Map<String, Object>> queryDictionary() {
		return commonDao.queryDictionary();
	}

	public CommonDao getCommonDao() {
		return commonDao;
	}

	public void setCommonDao(CommonDao commonDao) {
		this.commonDao = commonDao;
	}

}
