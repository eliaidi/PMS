package com.liaochente.pms.common.service;

import java.util.List;
import java.util.Map;

public interface CommonService {
	
	/**
	 * 查询字典表
	 * @return
	 */
	List<Map<String, Object>> queryDictionary();
}
