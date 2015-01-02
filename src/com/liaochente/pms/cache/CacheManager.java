package com.liaochente.pms.cache;

import java.util.HashMap;
import java.util.Map;

import com.liaochente.pms.util.CommonUtil;

/**
 * 缓存管理类
 * @author liaote
 *
 */
public class CacheManager {
	
	public static Map<String, Cache> cacheMap = new HashMap<String, Cache>();
	
	private static int cacheTotal;
	
	public static void put(String name, Cache cache){
		cacheMap.put(name, cache);
		cacheTotal++;
	}
	
	public static void remove(String name){
		cacheMap.remove(name);
	}
	
	public static void removeAll(){
		cacheMap.clear();
	}
	
	public static Cache getCacheInfo(String name){
		return cacheMap.get(name);
	}
}
