package com.liaochente.pms.cache;

import com.liaochente.pms.util.CommonConst;
import com.liaochente.pms.util.CommonUtil;

/**
 * 缓存类
 * @author liaote
 *
 */
public class Cache {
	
	private String hashCode;
	
	private Object __cache;
	
	private String createDate = CommonUtil.getNowDateToString(CommonConst.DATE_FORMAT_TYPE_TWO);

	public Object getCache() {
		return __cache;
	}

	public void setCache(Object __cache) {
		this.__cache = __cache;
	}
	
	public void remove()
	{
		__cache = null;
	}

	public String getHashCode() {
		return hashCode;
	}

	public void setHashCode(String hashCode) {
		this.hashCode = hashCode;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
}
