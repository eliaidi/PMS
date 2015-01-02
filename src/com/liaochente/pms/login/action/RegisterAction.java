package com.liaochente.pms.login.action;

import java.util.HashMap;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

import bean.RegisterUserInfo;
import bean.UserInfo;

import com.liaochente.pms.common.action.BaseAction;
import com.liaochente.pms.login.service.LoginService;
import com.liaochente.pms.login.service.RegisterService;
import com.liaochente.pms.util.CommonConst;
import com.liaochente.pms.util.CommonUtil;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	private RegisterUserInfo userInfo;

	private RegisterService service;

	private LoginService loginService;

	private String securityCode;

	private String isCheckUserName = CommonConst.AJAX_HANDLE_STATUS_NO;

	private Map<String, Object> treatyMap;
	
	public String goRegister() {
		return SUCCESS;
	}

	public String registerUserInfo() throws Exception {
		service.registerUserInfo(userInfo.toParameterMap());
		UserInfo loginUserInfo = loginService.login(userInfo.getUsername(),
				userInfo.getPassword());
		if (loginUserInfo != null) {
			session.put(CommonConst.USER_INFO_KEY, loginUserInfo);
			return SUCCESS;
		} else {
			return LOGIN;
		}
	}

	/**
	 * 检测验证码填写是否正确
	 */
	public void validateRegisterUserInfo() {
		String _code = CommonUtil.converObjectToString(session
				.get(CommonConst.SECURYTY_CODE));
		if (!_code.equals(securityCode)) {
			this.addFieldError("security_error", "验证码错误");
		}
	}

	/**
	 * 校验注册用户名是否重复
	 * 
	 * @return
	 */
	public String checkUserName() throws Exception {
		if (service.checkUserName(userInfo)) {
			isCheckUserName = CommonConst.AJAX_HANDLE_STATUS_YES;
		}
		return SUCCESS;
	}

	public String requestRegisterTreaty() throws Exception {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("is_new_one", "1");
		param.put("is_using", "1");
		treatyMap = service.getRegisterTreatyInfo(param);
		return SUCCESS;
	}

	public RegisterUserInfo getUserInfo() {
		return userInfo;
	}

	public RegisterService getService() {
		return service;
	}

	public void setUserInfo(RegisterUserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public void setService(RegisterService service) {
		this.service = service;
	}

	public String getSecurityCode() {
		return securityCode;
	}

	public void setSecurityCode(String securityCode) {
		this.securityCode = securityCode;
	}

	public String getIsCheckUserName() {
		return isCheckUserName;
	}

	public void setIsCheckUserName(String isCheckUserName) {
		this.isCheckUserName = isCheckUserName;
	}

	public Map<String, Object> getTreatyMap() {
		return treatyMap;
	}

	public void setTreatyMap(Map<String, Object> treatyMap) {
		this.treatyMap = treatyMap;
	}

	public LoginService getLoginService() {
		return loginService;
	}

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

}
