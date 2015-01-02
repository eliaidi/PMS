package com.liaochente.pms.productinfo.service.impl;

import java.util.List;

import bean.ProductBrand;

import com.liaochente.pms.productinfo.dao.ProductBrandDao;
import com.liaochente.pms.productinfo.service.ProductBrandService;

public class ProductBrandServiceImpl implements ProductBrandService {

	private ProductBrandDao dao;

	@Override
	public List<ProductBrand> getProductBrandInfo() {
		return dao.getProductBrandList();
	}

	@Override
	public boolean insertBrandInfo(ProductBrand prdClass) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateBrandInfo(ProductBrand prdClass) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteBrandInfo(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	public ProductBrandDao getDao() {
		return dao;
	}

	public void setDao(ProductBrandDao dao) {
		this.dao = dao;
	}

}
