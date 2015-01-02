package com.liaochente.pms.productinfo.action;

import java.util.List;
import java.util.Map;

import bean.Product;
import bean.ProductClass;
import bean.ProductColor;

import com.liaochente.pms.common.action.BaseAction;
import com.liaochente.pms.productinfo.service.ProductClassService;
import com.liaochente.pms.productinfo.service.ProductColorService;
import com.liaochente.pms.productinfo.service.ProductCommentService;
import com.liaochente.pms.productinfo.service.ProductInfoService;
import com.liaochente.pms.productinfo.service.RecommendProductService;
import com.liaochente.pms.util.SearchProductHelp;

/**
 * 产品详细信息ACTION
 * 
 * @author liaote
 * 
 */
public class ProductDetailAction extends BaseAction {

	private RecommendProductService recommendProductService;

	private ProductCommentService productCommentService;

	private ProductInfoService productInfoService;

	private ProductClassService productClassService;

	private ProductColorService productColorService;

	/**
	 * 商品分类信息
	 */
	private List<ProductClass> classList;
	/**
	 * 商品详细信息
	 */
	private Product product;

	/**
	 * 商品颜色列表
	 */
	private List<ProductColor> colorList;

	/**
	 * 商品评价信息
	 */
	private List<Map<String, Object>> productCommentList;

	/**
	 * 评价总条数
	 */
	private int comment_count;

	/**
	 * 推荐商品信息(用作广告)
	 */
	private List<Map<String, Object>> recommendList;

	public String execute() throws Exception {
		product = productInfoService.getProductDetail(this.getSearchHelp());
		classList = productClassService.getProductClassInfo();
		colorList = productColorService.getProductColorRec(this.getSearchHelp().getId());
		productCommentList = productCommentService
				.getProductCommentInfo(this.getSearchHelp());
		comment_count = productCommentService
				.getProductCommentCount(this.getSearchHelp());
		recommendList = recommendProductService.getLedRecommendProductInfo();
		return SUCCESS;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public ProductColorService getProductColorService() {
		return productColorService;
	}

	public List<ProductColor> getColorList() {
		return colorList;
	}

	public void setProductColorService(ProductColorService productColorService) {
		this.productColorService = productColorService;
	}

	public void setColorList(List<ProductColor> colorList) {
		this.colorList = colorList;
	}

	public List<Map<String, Object>> getProductCommentList() {
		return productCommentList;
	}

	public void setProductCommentList(
			List<Map<String, Object>> productCommentList) {
		this.productCommentList = productCommentList;
	}

	public int getComment_count() {
		return comment_count;
	}

	public void setComment_count(int comment_count) {
		this.comment_count = comment_count;
	}

	public ProductClassService getProductClassService() {
		return productClassService;
	}

	public List<ProductClass> getClassList() {
		return classList;
	}

	public void setProductClassService(ProductClassService productClassService) {
		this.productClassService = productClassService;
	}

	public void setClassList(List<ProductClass> classList) {
		this.classList = classList;
	}

	public ProductCommentService getProductCommentService() {
		return productCommentService;
	}

	public ProductInfoService getProductInfoService() {
		return productInfoService;
	}

	public void setProductCommentService(
			ProductCommentService productCommentService) {
		this.productCommentService = productCommentService;
	}

	public void setProductInfoService(ProductInfoService productInfoService) {
		this.productInfoService = productInfoService;
	}

	public RecommendProductService getRecommendProductService() {
		return recommendProductService;
	}

	public void setRecommendProductService(
			RecommendProductService recommendProductService) {
		this.recommendProductService = recommendProductService;
	}

	public List<Map<String, Object>> getRecommendList() {
		return recommendList;
	}

	public void setRecommendList(List<Map<String, Object>> recommendList) {
		this.recommendList = recommendList;
	}
}
