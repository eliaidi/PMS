package com.liaochente.pms.productinfo.action;

import java.util.List;

import bean.Product;
import bean.ProductBrand;
import bean.ProductClass;

import com.liaochente.pms.common.action.BaseAction;
import com.liaochente.pms.productinfo.service.ProductBrandService;
import com.liaochente.pms.productinfo.service.ProductClassService;
import com.liaochente.pms.productinfo.service.ProductInfoService;
import com.liaochente.pms.util.CommonUtil;
import com.liaochente.pms.util.SearchProductHelp;

/**
 * Index.jsp的Action
 * 
 * @author liaote
 * 
 */
public class IndexAction extends BaseAction {
	
	private ProductClassService productClassService;

	private ProductInfoService productInfoService;

	private ProductBrandService productBrandService;

	private List<ProductClass> classList;

	private List<Product> proList;

	private List<ProductBrand> brandList;

	public String execute() throws Exception {
		this.getPageHelp().setPageSize(6);
		proList = productInfoService.getProductInfoList(this.getSearchHelp(), this.getPageHelp());
		classList = productClassService.getProductClassInfo();
		brandList = productBrandService.getProductBrandInfo();
		return "success";
	}
	public ProductClassService getProductClassService() {
		return productClassService;
	}

	public ProductInfoService getProductInfoService() {
		return productInfoService;
	}

	public void setProductClassService(ProductClassService productClassService) {
		this.productClassService = productClassService;
	}

	public void setProductInfoService(ProductInfoService productInfoService) {
		this.productInfoService = productInfoService;
	}

	public List<ProductClass> getClassList() {
		return classList;
	}

	public List<Product> getProList() {
		return proList;
	}

	public void setClassList(List<ProductClass> classList) {
		this.classList = classList;
	}

	public void setProList(List<Product> proList) {
		this.proList = proList;
	}

	public List<ProductBrand> getBrandList() {
		return brandList;
	}

	public void setBrandList(List<ProductBrand> brandList) {
		this.brandList = brandList;
	}

	public ProductBrandService getProductBrandService() {
		return productBrandService;
	}

	public void setProductBrandService(ProductBrandService productBrandService) {
		this.productBrandService = productBrandService;
	}
}
