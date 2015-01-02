package com.liaochente.pms.productinfo.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import bean.Product;

import com.liaochente.pms.productinfo.dao.ProductInfoDao;
import com.liaochente.pms.productinfo.service.ProductInfoService;
import com.liaochente.pms.util.CommonUtil;
import com.liaochente.pms.util.PageHelp;
import com.liaochente.pms.util.SearchProductHelp;

public class ProductInfoServiceImpl implements ProductInfoService {

	private ProductInfoDao dao;

	public boolean deleteProductInfo(int id) {
		return false;
	}

	public List<Product> getProductInfoList(SearchProductHelp searchHelp,
			PageHelp pageHelp) {
		Map<String, Object> map = searchHelp.toParameterMap();
		pageHelp.putLimitParam(map);
		List<Product> list = dao.getProductInfoList(map);
		return list;
	}

	@Override
	public int getProductInfoCount(SearchProductHelp searchHelp) {
		Map<String, Object> map = searchHelp.toParameterMap();
		return dao.getProductInfoCount(map);
	}

	@Override
	public Product getProductDetail(SearchProductHelp searchHelp) {
		Product product = null;
		if (CommonUtil.isNotNull(searchHelp.getId())) {
			List<Product> list = dao.getProductDetail(searchHelp.getId());
			if (list != null) {
				product = list.get(0);
			}
		}
		return product;
	}

	public boolean insertProductInfo(Product product) {
		return false;
	}

	public boolean updateProductInfo(Product product) {
		return false;
	}

	public ProductInfoDao getDao() {
		return dao;
	}

	public void setDao(ProductInfoDao dao) {
		this.dao = dao;
	}

}
