package com.liaochente.pms.productinfo.action;

import java.util.List;

import bean.Product;
import bean.ProductBrand;
import bean.ProductClass;
import bean.ProductColor;
import com.liaochente.pms.common.action.BaseAction;
import com.liaochente.pms.productinfo.service.ProductBrandService;
import com.liaochente.pms.productinfo.service.ProductClassService;
import com.liaochente.pms.productinfo.service.ProductColorService;
import com.liaochente.pms.productinfo.service.ProductInfoService;
import com.liaochente.pms.util.CommonUtil;
import com.liaochente.pms.util.PageHelp;
import com.liaochente.pms.util.SearchProductHelp;

/**
 * 产品信息处理Action
 * 
 * @author liaote
 * 
 */
public class ProductInfoAction extends BaseAction {

	private ProductInfoService productInfoService;

	private ProductClassService productClassService;

	private ProductBrandService productBrandService;

	private ProductColorService productColorService;

	private List<Product> proList;

	private List<ProductClass> classList;

	private List<ProductBrand> brandList;

	private List<ProductColor> colorList;

	public String execute() throws Exception {
		int rowCount = productInfoService.getProductInfoCount(this.getSearchHelp());
		this.getPageHelp().setRowCount(rowCount);
		proList = productInfoService.getProductInfoList(this.getSearchHelp(), this.getPageHelp());
		classList = productClassService.getProductClassInfo();
		brandList = productBrandService.getProductBrandInfo();
		colorList = productColorService.getProductColorInfo();
		return SUCCESS;
	}

	public ProductInfoService getProductInfoService() {
		return productInfoService;
	}

	public void setProductInfoService(ProductInfoService productInfoService) {
		this.productInfoService = productInfoService;
	}

	public List<ProductClass> getClassList() {
		return classList;
	}

	public void setClassList(List<ProductClass> classList) {
		this.classList = classList;
	}

	public ProductClassService getProductClassService() {
		return productClassService;
	}

	public void setProductClassService(ProductClassService productClassService) {
		this.productClassService = productClassService;
	}

	public ProductBrandService getProductBrandService() {
		return productBrandService;
	}

	public List<ProductBrand> getBrandList() {
		return brandList;
	}

	public void setProductBrandService(ProductBrandService productBrandService) {
		this.productBrandService = productBrandService;
	}

	public void setBrandList(List<ProductBrand> brandList) {
		this.brandList = brandList;
	}

	public ProductColorService getProductColorService() {
		return productColorService;
	}

	public void setProductColorService(ProductColorService productColorService) {
		this.productColorService = productColorService;
	}

	public List<ProductColor> getColorList() {
		return colorList;
	}

	public void setColorList(List<ProductColor> colorList) {
		this.colorList = colorList;
	}

	public List<Product> getProList() {
		return proList;
	}

	public void setProList(List<Product> proList) {
		this.proList = proList;
	}

}
