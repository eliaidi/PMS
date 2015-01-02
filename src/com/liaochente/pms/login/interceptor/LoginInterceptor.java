package com.liaochente.pms.login.interceptor;

import org.apache.log4j.Logger;

import com.liaochente.pms.common.action.BaseAction;
import com.liaochente.pms.common.interceptor.BaseInterceptor;
import com.liaochente.pms.util.CommonConst;
import com.liaochente.pms.util.CommonUtil;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;

public class LoginInterceptor extends BaseInterceptor {

	private static final long serialVersionUID = 8286069354787316540L;
	
	private Logger logger = Logger.getLogger(LoginInterceptor.class);
	
	public String doPost(ActionInvocation inv) {
		try {
			Object user = session.get(CommonConst.USER_INFO_KEY);
			if(user != null) {
				return BaseAction.SUCCESS;
			}
			return inv.invoke();
		} catch (Exception e) {
			logger.error("Login Error:",e);
			e.printStackTrace();
		}
		return result;
	}

}
