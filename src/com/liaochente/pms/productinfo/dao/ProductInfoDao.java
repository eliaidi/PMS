package com.liaochente.pms.productinfo.dao;

import java.util.List;
import java.util.Map;

import com.liaochente.pms.util.PageHelp;
import com.liaochente.pms.util.SearchProductHelp;

import bean.Product;

public interface ProductInfoDao {

	List<Product> getProductInfoList(Map<String, Object> map);

	int getProductInfoCount(Map<String,Object> map);
	
	/**
	 * 获取单个产品的详细信息
	 * 
	 * @param productId
	 * @return
	 */
	List<Product> getProductDetail(String productId);
	
	boolean insertProductInfo(Product product);

	boolean updateProductInfo(Product product);

	boolean deleteProductInfo(int id);
}
