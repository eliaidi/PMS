package com.liaochente.pms.common.dao;

import java.util.List;
import java.util.Map;

public interface CommonDao {

	/**
	 * 查询字典表
	 * @return
	 */
	List<Map<String, Object>> queryDictionary();
}
