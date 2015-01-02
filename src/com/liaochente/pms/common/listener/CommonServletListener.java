package com.liaochente.pms.common.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import com.liaochente.pms.util.CommonUtil;

public class CommonServletListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		CommonUtil.initCache();
	}
	

}
