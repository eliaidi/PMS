package com.liaochente.pms.common.action;

import java.util.Map;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.liaochente.pms.util.CommonUtil;
import com.liaochente.pms.util.PageHelp;
import com.liaochente.pms.util.SearchProductHelp;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport implements SessionAware,
		RequestAware, ApplicationAware {

	/**
	 * 服务器 全局变量
	 */
	public Map<String, Object> application;

	/**
	 * result常量， 表示返回上一页
	 */
	public static String LAST = "last";

	/**
	 * Session
	 */
	public Map<String, Object> session;

	/**
	 * Request
	 */
	public Map<String, Object> request;

	/**
	 * 分页帮助
	 */
	public PageHelp pageHelp;

	/**
	 * 搜索帮助
	 */
	public SearchProductHelp searchHelp;

	/**
	 * 上一个页面
	 */
	public String lastPage;

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public Map<String, Object> getSession() {
		return this.session;
	}

	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}

	public Map<String, Object> getRequest() {
		return this.request;
	}

	public PageHelp getPageHelp() {
		if (pageHelp == null) {
			this.pageHelp = CommonUtil.getPageHelp();
		}
		return this.pageHelp;
	}

	public SearchProductHelp getSearchHelp() {
		if (searchHelp == null) {
			searchHelp = new SearchProductHelp();
		}
		return this.searchHelp;
	}

	public void setSearchHelp(SearchProductHelp searchHelp) {
		this.searchHelp = searchHelp;
	}

	public void setPageHelp(PageHelp pageHelp) {
		this.pageHelp = pageHelp;
	}

	public static String getLAST() {
		return LAST;
	}

	public static void setLAST(String lAST) {
		LAST = lAST;
	}

	public String getLastPage() {
		return lastPage;
	}

	public void setLastPage(String lastPage) {
		this.lastPage = lastPage;
	}

	@Override
	public void setApplication(Map<String, Object> application) {
		this.application = application;
	}

	public Map<String, Object> getApplication() {
		return this.application;
	}
}
