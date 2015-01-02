package com.liaochente.pms.ordermanager.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import bean.Order;
import bean.Product;
import bean.UserInfo;

import com.liaochente.pms.common.action.BaseAction;
import com.liaochente.pms.ordermanager.service.OrderService;
import com.liaochente.pms.shoppingcart.cart.ShoppingCart;
import com.liaochente.pms.util.CommonConst;
import com.liaochente.pms.util.CommonUtil;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 订单处理
 * 
 * @author 廖陈特
 * 
 */
public class OrderFormGenerateAction extends BaseAction {
	
	private static final long serialVersionUID = -2875334257028982732L;

	private OrderService orderService;

	private UserInfo userInfo;

	private String orderNumber;
	
	
	/**
	 * 生成订单UUID
	 * @return
	 * @throws Exception
	 */
	public String orderGenerate() throws Exception {
		ShoppingCart cart = (ShoppingCart) session.get(CommonConst.SHOPPING_CART_KEY);
		orderNumber = CommonUtil.generateUUID();
		cart.setOrderNumber(orderNumber);
		return SUCCESS;
	}
	
	public OrderService getOrderService() {
		return orderService;
	}

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
}
