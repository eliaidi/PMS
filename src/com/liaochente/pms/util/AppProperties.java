package com.liaochente.pms.util;

import java.io.IOException;
import java.util.Properties;

public class AppProperties {
	private static AppProperties instance;

	private Properties properties;

	// the name of the configuration file
	public static final String CONFIG_FILE = "/commCfg.properties";

	private static synchronized void init() {
		if (instance == null)
			instance = new AppProperties();
	}

	public static AppProperties getInstance() {
		if (instance == null)
			init();

		return instance;
	}

	private AppProperties() {
		// Load the property file
		properties = new Properties();
		try {
			properties.load(AppProperties.class
					.getResourceAsStream(CONFIG_FILE));

		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public Properties getProperties() {
		return properties;
	}

	public static String getProvalue(String Key) {
		Properties props = AppProperties.getInstance().getProperties();
		return props.getProperty(Key);
	}
}
