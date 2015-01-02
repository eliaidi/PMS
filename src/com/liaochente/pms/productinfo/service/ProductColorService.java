package com.liaochente.pms.productinfo.service;

import java.util.List;

import bean.ProductColor;

/**
 * 产品颜色Service
 * 
 * @author liaote
 * 
 */
public interface ProductColorService {
	/**
	 * 获取颜色列表
	 * 
	 * @return
	 */
	List<ProductColor> getProductColorInfo();

	/**
	 * 根据产品Id 获取产品的颜色列表
	 * 
	 * @param productId
	 * @return
	 */
	List<ProductColor> getProductColorRec(String productId);
}
