package com.liaochente.pms.common.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.liaochente.pms.common.action.BaseAction;
import com.liaochente.pms.util.CommonConst;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public abstract class BaseMethodInterceptor extends MethodFilterInterceptor {

	private static final long serialVersionUID = -2946738342662472025L;
	
	protected Map<String, Object> session;
	
	protected HttpServletRequest request;
	
	protected String result = BaseAction.INPUT;
	
	protected String lastPage = null;
	
	protected boolean isNotNullLastPage = false;

	public abstract String doPost(ActionInvocation inv);

	public String doIntercept(ActionInvocation inv) throws Exception {
		session = inv.getInvocationContext().getSession();
		request = (HttpServletRequest) inv.getInvocationContext().get(
				ServletActionContext.HTTP_REQUEST);
		if(null != lastPage && !"".equals(lastPage) && lastPage.contains("page/login/Login.jsp")) {
			lastPage = "";
		}
		if(this.isNotNullLastPage) {
			request.setAttribute(CommonConst.LAST_PAGE_KEY, lastPage);
		}
		return this.doPost(inv);
	}
}
