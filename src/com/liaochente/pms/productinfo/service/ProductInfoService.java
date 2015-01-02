package com.liaochente.pms.productinfo.service;

import java.util.List;
import java.util.Map;

import com.liaochente.pms.util.PageHelp;
import com.liaochente.pms.util.SearchProductHelp;

import bean.Product;

/**
 * 产品信息Service
 * 
 * @author liaote
 * 
 */
public interface ProductInfoService {

	/**
	 * 通过查询条件获取产品信息集合
	 * 
	 * @param searchHelp
	 * @return
	 */
	List<Product> getProductInfoList(SearchProductHelp searchHelp,
			PageHelp pageHelp);

	/**
	 * 通过查询条件获取产品记录总数
	 * 
	 * @param searchHelp
	 * @return
	 */
	int getProductInfoCount(SearchProductHelp searchHelp);
	
	/**
     * 根据ID获取单个产品详细信息
     * 
     * @param searchHelp
     * @return
     */
    Product getProductDetail(SearchProductHelp searchHelp);

	/**
	 * 新增产品信息
	 * 
	 * @param product
	 * @return
	 */
	boolean insertProductInfo(Product product);

	/**
	 * 修改产品信息
	 * 
	 * @param product
	 * @return
	 */
	boolean updateProductInfo(Product product);

	/**
	 * 删除产品信息
	 * 
	 * @param id
	 * @return
	 */
	boolean deleteProductInfo(int id);
}
