package com.liaochente.pms.util;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

import net.sf.json.JSONArray;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;
import bean.ProductBrand;
import bean.ProductClass;
import bean.ProductColor;

import com.liaochente.pms.cache.Cache;
import com.liaochente.pms.cache.CacheManager;
import com.liaochente.pms.common.service.CommonService;
import com.liaochente.pms.productinfo.dao.ProductColorDao;
import com.liaochente.pms.productinfo.service.ProductBrandService;
import com.liaochente.pms.productinfo.service.ProductClassService;
import com.liaochente.pms.productinfo.service.ProductColorService;
import com.liaochente.pms.shoppingcart.cart.ShoppingCart;
import com.liaochente.pms.shoppingcart.cart.impl.ShoppingCartImpl;

/**
 * 公共类
 * 
 * @author liaote
 * 
 */
public class CommonUtil {

	private static final SimpleDateFormat dateFormat = new SimpleDateFormat(
			"yyyy-MM-dd hh:mm:ss");
	
	private static final SimpleDateFormat dateFormat2 = new SimpleDateFormat(
			"yyyy-MM-dd");

	private static BASE64Encoder encoder = new BASE64Encoder();

	private static BASE64Decoder decoder = new BASE64Decoder();

	/**
	 * 初始化缓存数据
	 */
	public static void initCache() {
		initDictionary();
		initColor();
		initBrand();
		initClass();
	}
	
	private static void initDictionary() {
		CommonService service = (CommonService) SpringContext.getBean("commonService");
		List<Map<String, Object>> list = service.queryDictionary();
		Cache cache = new Cache();
		cache.setCache(list);
		CacheManager.put(CommonConst.CACHE_KEY_DICTIONARY, cache);
	}
	
	private static void initColor() {
		ProductColorService service = (ProductColorService) SpringContext.getBean("productColorService");
		List<ProductColor> list = service.getProductColorInfo();
		Cache cache = new Cache();
		cache.setCache(list);
		CacheManager.put(CommonConst.CACHE_KEY_COLOR, cache);
	}
	
	private static void initBrand() {
		ProductBrandService service = (ProductBrandService) SpringContext.getBean("productBrandService");
		List<ProductBrand> list = service.getProductBrandInfo();
		Cache cache = new Cache();
		cache.setCache(list);
		CacheManager.put(CommonConst.CACHE_KEY_BRAND, cache);
	}
	
	private static void initClass() {
		ProductClassService service = (ProductClassService) SpringContext.getBean("productClassService");
		List<ProductClass> list = service.getProductClassInfo();
		Cache cache = new Cache();
		cache.setCache(list);
		CacheManager.put(CommonConst.CACHE_KEY_CLASS, cache);
	}

	/**
	 * 获取Cache对象
	 * @param key
	 * @return
	 */
	public static Object getCache(String key) {
		Cache cache = CacheManager.getCacheInfo(key);
		Object object = null;
		if (null != cache) {
			object = cache.getCache();
		}
		return object;
	}
	
	public static JSONArray getCacheAsJSONArray(String key) {
		Cache cache = CacheManager.getCacheInfo(key);
		Object object = "";
		if (null != cache) {
			object = cache.getCache();
		}
		return JSONArray.fromObject(object);
	}
	
	/**
	 * 获取当前时间(字符串形式)
	 * 
	 * @param type
	 *            格式化类型
	 * @return
	 */
	public static String getNowDateToString(int type) {
		String date = null;
		switch (type) {
		case CommonConst.DATE_FORMAT_TYPE_ONE:
			date = dateFormat2.format(new Date());
			break;
		case CommonConst.DATE_FORMAT_TYPE_TWO:
			date = dateFormat.format(new Date());
			break;
		}
		return date;
	}

	/**
	 * 自动生成UUID
	 * 
	 * @return
	 */
	public static String generateUUID() {
		UUID uuid = UUID.randomUUID();
		return uuid.toString();
	}

	/**
	 * 判空
	 * 
	 * @param str
	 * @return
	 */
	public static boolean isNotNull(Object str) {
		boolean isNotNull = false;
		if (null != str && !"".equals(str)) {
			isNotNull = true;
		}
		return isNotNull;
	}

	/**
	 * 判断Map是否为空
	 * 
	 * @param map
	 * @return
	 */
	public static boolean isNotNullToMap(Map map) {
		boolean isNotNull = false;
		if (null != map && !map.isEmpty()) {
			isNotNull = true;
		}
		return isNotNull;
	}

	/**
	 * 判断List是否为空
	 * 
	 * @param map
	 * @return
	 */
	public static boolean isNotNullToList(List list) {
		boolean isNotNull = false;
		if (null != list && list.size() > 0) {
			isNotNull = true;
		}
		return isNotNull;
	}

	/**
	 * 获取一个分页帮助对象
	 * 
	 * @return
	 */
	public static PageHelp getPageHelp() {
		PageHelp pageHelp = new PageHelp();
		pageHelp.setCurrentPage(1);
		return pageHelp;
	}

	/**
	 * 日期格式化(String转换成Date)
	 * 
	 * @param time
	 * @return
	 */
	public static Date dateFormat(String time) {
		Date date = null;
		try {
			date = dateFormat.parse(time);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}

	/**
	 * 日期格式化(Date转换成String) yyyy-MM-dd hh:mm:ss
	 * 
	 * @param time
	 * @return
	 */
	public static String dateFormat(Date date) {
		String time = dateFormat.format(date);
		return time;
	}

	/**
	 * 把Object转换成String
	 * 
	 * @param ob
	 * @return
	 */
	public static String converObjectToString(Object ob) {
		return ob == null || "".equals(ob) ? null : ob.toString();
	}

	/**
	 * 把List转换成Map,取列表中第一个Map
	 * 
	 * @param list
	 * @return
	 */
	public static Map<String, Object> converListToMap(
			List<Map<String, Object>> list) {
		Map<String, Object> map = null;
		if (null != list && list.size() > 0) {
			map = list.get(0);
		}
		return map;
	}

	/**
	 * 把Object转换成ShoppingCart
	 * 
	 * @param ob
	 * @return
	 */
	public static ShoppingCart converObjectToCart(Object ob) {
		return ob == null ? new ShoppingCartImpl() : (ShoppingCart) ob;
	}

	/**
	 * BASE64 加密
	 * 
	 * @param str
	 * @return
	 */
	public static String base64Encoding(String str) {
		if (isNotNull(str)) {
			str = encoder.encode(str.getBytes());
		}
		return str;
	}

	/**
	 * BASE64解密
	 * 
	 * @param str
	 * @return
	 * @throws IOException
	 */
	public static String base64Decoder(String str) throws IOException {
		if (isNotNull(str)) {
			byte[] decoderStr = decoder.decodeBuffer(str);
			str = new String(decoderStr);
		}
		return str;
	}
	
	public static void main(String[] args) throws IOException {
		String str = "你好啊";
		//加密
		BASE64Encoder encoder = new BASE64Encoder();
		String result = encoder.encode(str.getBytes());
		System.out.println(result);
		//解密
		BASE64Decoder decoder = new BASE64Decoder();
		byte[] decoderStr = decoder.decodeBuffer(result);
		result = new String(decoderStr);
		System.out.println(result);
	}
}