package com.liaochente.pms.securitycode.action;

import java.io.ByteArrayInputStream;
import com.liaochente.pms.common.action.BaseAction;
import com.liaochente.pms.securitycode.SecurityCode;
import com.liaochente.pms.securitycode.SecurityImage;
import com.liaochente.pms.util.CommonConst;
import com.liaochente.pms.util.CommonUtil;

public class SecurityCodeAction extends BaseAction {

	private SecurityCode securityCode;

	private SecurityImage securityImage;

	private ByteArrayInputStream inputStream;

	private String isCheckCode = CommonConst.AJAX_HANDLE_STATUS_NO;

	private String code;

	private static final long serialVersionUID = 2065777805236670563L;

	@Override
	public String execute() throws Exception {
		String code = securityCode.getSecurityCode(true);
		inputStream = securityImage.getImageAsInputStream(code);
		session.put(CommonConst.SECURYTY_CODE, code);
		return SUCCESS;
	}

	public String checkSecurityCode() throws Exception {
		String _code = CommonUtil.converObjectToString(session
				.get(CommonConst.SECURYTY_CODE));
		if (_code.equals(code)) {
			isCheckCode = CommonConst.AJAX_HANDLE_STATUS_YES;
		}
		return SUCCESS;
	}

	public SecurityCode getSecurityCode() {
		return securityCode;
	}

	public void setSecurityCode(SecurityCode securityCode) {
		this.securityCode = securityCode;
	}

	public SecurityImage getSecurityImage() {
		return securityImage;
	}

	public void setSecurityImage(SecurityImage securityImage) {
		this.securityImage = securityImage;
	}

	public ByteArrayInputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(ByteArrayInputStream inputStream) {
		this.inputStream = inputStream;
	}

	public String getIsCheckCode() {
		return isCheckCode;
	}

	public void setIsCheckCode(String isCheckCode) {
		this.isCheckCode = isCheckCode;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
}
