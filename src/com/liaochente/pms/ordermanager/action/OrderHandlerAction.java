package com.liaochente.pms.ordermanager.action;

import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;

import bean.Order;
import bean.UserInfo;

import com.liaochente.pms.common.action.BaseAction;
import com.liaochente.pms.ordermanager.service.OrderService;
import com.liaochente.pms.productinfo.service.ProductCommentService;
import com.liaochente.pms.shoppingcart.cart.ShoppingCart;
import com.liaochente.pms.util.CommonConst;
import com.liaochente.pms.util.CommonUtil;
import com.liaochente.pms.util.PageHelp;
import com.liaochente.pms.util.SearchProductHelp;

/**
 * 订单处理Action
 * @author 廖陈特
 *
 */
public class OrderHandlerAction extends BaseAction {

	private static final long serialVersionUID = -80003029247364563L;

	private OrderService orderService;
	
	private UserInfo userInfo;

	private Order order;

	private Map<String, Object> orderDetail;

	private List<Map<String, Object>> orderList;
	
	/**
	 * 跳转订单确认页面
	 * @return
	 */
	public String goOrderConfirmation() {
		return SUCCESS;
	}
	

	/**
	 * 查询用户订单列表
	 * 
	 * @return
	 * @throws Exception
	 */
	public String orderList() throws Exception {
		UserInfo user = (UserInfo)session.get(CommonConst.USER_INFO_KEY);
		this.getPageHelp().setPageSize(5);
		orderList = orderService.queryOrderList(user, this.getPageHelp());
		int rowCount = orderService.queryOrderListCount(user);
		this.getPageHelp().setRowCount(rowCount);
		return SUCCESS;
	}

	/**
	 * 查询订单详情
	 * 
	 * @return
	 * @throws Exception
	 */
	public String orderDetail() throws Exception {
		orderDetail = orderService.queryOrderDetail(order);
		return SUCCESS;
	}

	/**
	 * 新增订单
	 * 
	 * @return
	 * @throws Exception
	 */
	public String addOrder() throws Exception {
		userInfo = (UserInfo) session.get(CommonConst.USER_INFO_KEY);
		ShoppingCart cart = (ShoppingCart) session
				.get(CommonConst.SHOPPING_CART_KEY);
		int order_id = orderService.addOrder(cart, userInfo, order);
		order.setId(order_id);
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

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Map<String, Object> getOrderDetail() {
		return orderDetail;
	}

	public void setOrderDetail(Map<String, Object> orderDetail) {
		this.orderDetail = orderDetail;
	}

	public List<Map<String, Object>> getOrderList() {
		return orderList;
	}

	public void setOrderList(List<Map<String, Object>> orderList) {
		this.orderList = orderList;
	}

}
