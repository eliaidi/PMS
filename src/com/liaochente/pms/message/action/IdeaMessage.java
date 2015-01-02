package com.liaochente.pms.message.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 处理客户意见Action
 * @author 廖陈特
 *
 */
public class IdeaMessage extends ActionSupport {
	
	private String message;
	
	/**
	 * 保存客户意见信息
	 * @return
	 */
	public String saveMessage(){
		
		return SUCCESS;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
