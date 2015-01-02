package com.liaochente.pms.login.action;

import bean.UserInfo;
import com.liaochente.pms.common.action.BaseAction;
import com.liaochente.pms.login.service.LoginService;
import com.liaochente.pms.util.CommonConst;
import com.liaochente.pms.util.CommonUtil;

/**
 * 登录和退出登录Action
 * 
 * @author 廖陈特
 * 
 */
public class LoginAction extends BaseAction {

	private static final long serialVersionUID = 1L;

	private LoginService loginService;
	/**
	 * 用户名
	 */
	private String username;
	/**
	 * 密码
	 */
	private String password;
	/**
	 * 验证码
	 */
	private String securityCode;
	
	public String goLogin() {
		return INPUT;
	}

	/**
	 * 登录方法
	 */
	public String login() throws Exception {
		UserInfo userInfo = loginService.login(username, CommonUtil.base64Encoding(password));
		if (null != userInfo) {
			session.put(CommonConst.USER_INFO_KEY, userInfo);
			return SUCCESS;
		} else {
			this.addFieldError("login_error","帐号名或者密码错误");
			return INPUT;
		}
	}

	/**
	 * 验证登录验证码是否正确
	 */
	public void validateLogin() {
		String _code = CommonUtil.converObjectToString(session
				.get(CommonConst.SECURYTY_CODE));
		if (!_code.equals(securityCode)) {
			this.addFieldError("security_error", "验证码错误");
		}
	}

	/**
	 * 登出方法
	 * 
	 * @return
	 * @throws Exception
	 */
	public String loginOut() throws Exception {
		session.clear();
		return SUCCESS;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public LoginService getLoginService() {
		return loginService;
	}

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

	public String getSecurityCode() {
		return securityCode;
	}

	public void setSecurityCode(String securityCode) {
		this.securityCode = securityCode;
	}
}
