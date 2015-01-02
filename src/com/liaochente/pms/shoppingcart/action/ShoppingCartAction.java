package com.liaochente.pms.shoppingcart.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import bean.Product;

import com.liaochente.pms.common.action.BaseAction;
import com.liaochente.pms.shoppingcart.cart.ShoppingCart;
import com.liaochente.pms.shoppingcart.cart.impl.ShoppingCartImpl;
import com.liaochente.pms.util.CommonConst;
import com.liaochente.pms.util.CommonUtil;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 购物车处理Action
 * 
 * @author 廖陈特
 * 
 */
public class ShoppingCartAction extends BaseAction {

	private String ajaxStatus = CommonConst.AJAX_HANDLE_STATUS_NO;

	private Product product;

	private ShoppingCart cart;

	/**
	 * 从购物车中移除商品
	 * 
	 * @return
	 * @throws Exception
	 */
	public String ajaxRemoveProduct() throws Exception {
		cart = CommonUtil.converObjectToCart(session.get(CommonConst.SHOPPING_CART_KEY));
		cart.removeProduct(product.getId() + "", product.getColor_id());
		ajaxStatus = CommonConst.AJAX_HANDLE_STATUS_YES;
		return SUCCESS;
	}

	public String ajaxAddProduct() throws Exception {
		cart = CommonUtil.converObjectToCart(session.get(CommonConst.SHOPPING_CART_KEY));
		cart.addProduct(product);
		session.put(CommonConst.SHOPPING_CART_KEY, cart);
		ajaxStatus = CommonConst.AJAX_HANDLE_STATUS_YES;
		return SUCCESS;
	}

	public String getAjaxStatus() {
		return ajaxStatus;
	}

	public void setAjaxStatus(String ajaxStatus) {
		this.ajaxStatus = ajaxStatus;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}
