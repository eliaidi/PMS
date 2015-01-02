package com.liaochente.pms.common.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.liaochente.pms.common.action.BaseAction;
import com.liaochente.pms.util.CommonConst;
import com.liaochente.pms.util.CommonUtil;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

/**
 * 基础拦截器
 * @author 廖陈特
 *
 */
public abstract class BaseInterceptor implements Interceptor {
	
	protected Map<String, Object> session;
	
	protected HttpServletRequest request;
	
	protected String result = BaseAction.INPUT;
	
	protected String lastPage = null;
	
	protected boolean isNotNullLastPage = false;
	
	public abstract String doPost(ActionInvocation inv);
	
	public String intercept(ActionInvocation inv) throws Exception {
		session = inv.getInvocationContext().getSession();
		request = (HttpServletRequest) inv.getInvocationContext().get(ServletActionContext.HTTP_REQUEST);
		lastPage = request.getHeader("referer");
		if(null != lastPage && !"".equals(lastPage) && lastPage.contains("page/login/Login.jsp")) {
			lastPage = "";
		}
		if(this.isNotNullLastPage) {
			request.setAttribute(CommonConst.LAST_PAGE_KEY, lastPage);
		}
		return this.doPost(inv);
	}

	public void destroy() {
	}

	public void init() {
	}

}
