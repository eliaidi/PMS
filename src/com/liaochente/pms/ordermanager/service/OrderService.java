package com.liaochente.pms.ordermanager.service;

import java.util.List;
import java.util.Map;

import com.liaochente.pms.shoppingcart.cart.ShoppingCart;
import com.liaochente.pms.util.PageHelp;

import bean.Order;
import bean.Product;
import bean.UserInfo;

/**
 * 订单相关操作Service
 * @author 廖陈特
 *
 */
public interface OrderService {

	/**
	 * 新增订单
	 * @param cart
	 * @param userInfo
	 * @param order
	 */
	int addOrder(ShoppingCart cart, UserInfo userInfo, Order order);
	
	/**
	 * 查询订单详细信息
	 * @param order
	 * @return
	 */
	Map<String, Object> queryOrderDetail(Order order);
	
	/**
	 * 查询用户订单列表信息
	 * @param order
	 * @return
	 */
	List<Map<String, Object>> queryOrderList(UserInfo user, PageHelp pageHelp);
	
	/**
	 * 查询用户订单列表数量
	 * @param User
	 * @return
	 */
	int queryOrderListCount(UserInfo user);
	
	/**
	 * 查询各个状态下的订单数量
	 * @param map
	 * @return
	 */
	Map<String, Object> queryOrderStatusCount(UserInfo user);
}
