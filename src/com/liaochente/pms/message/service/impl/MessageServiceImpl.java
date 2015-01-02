package com.liaochente.pms.message.service.impl;

import com.liaochente.pms.message.dao.MessageDao;
import com.liaochente.pms.message.service.MessageService;

public class MessageServiceImpl implements MessageService {

	private MessageDao dao;

	public MessageDao getDao() {
		return dao;
	}

	public void setDao(MessageDao dao) {
		this.dao = dao;
	}
	
}
