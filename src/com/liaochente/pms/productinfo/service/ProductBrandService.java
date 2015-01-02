package com.liaochente.pms.productinfo.service;

import java.util.List;
import java.util.Map;

import bean.ProductBrand;

/**
 * 产品品牌Service
 * 
 * @author liaote
 * 
 */
public interface ProductBrandService {
	
	/**
	 * 获取所有产品品牌信息
	 * @return
	 */
	List<ProductBrand> getProductBrandInfo();

	/**
	 * 新增品牌信息
	 * @param prdClass
	 * @return
	 */
	boolean insertBrandInfo(ProductBrand prdClass);

	/**
	 * 修改品牌信息
	 * @param prdClass
	 * @return
	 */
	boolean updateBrandInfo(ProductBrand prdClass);

	/**
	 * 删除品牌信息
	 * @param id
	 * @return
	 */
	boolean deleteBrandInfo(int id);
}
