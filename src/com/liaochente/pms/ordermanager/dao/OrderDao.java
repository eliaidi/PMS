package com.liaochente.pms.ordermanager.dao;

import java.util.List;
import java.util.Map;

import bean.Order;

/**
 * 订单相关操作Dao
 * @author 廖陈特
 *
 */
public interface OrderDao {

	/**
	 * 根据订单编号，查询出订单的ID
	 * @param map
	 * @return
	 */
	int selectOrderId(Map<String, Object> map);
	/**
	 * 新增主订单
	 * @param map
	 */
	void addOrder(Map<String, Object> map);
	/**
	 * 新增子订单
	 * @param map
	 */
	void addSonOrder(Map<String, Object> map);
	
	/**
	 * 查询主订单详细信息
	 * @param order
	 * @return
	 */
	List<Map<String, Object>> queryOrderDetail(Order order);
	
	/**
	 * 查询子订单详细信息
	 * @param order
	 * @return
	 */
	List<Map<String, Object>> querySonOrderDetail(Order order);
	
	/**
	 * 查询用户订单列表
	 * @param order
	 * @return
	 */
	List<Map<String, Object>> queryOrderList(Map<String, Object> map);
	
	/**
	 * 查询用户订单列表总数量
	 * @param map
	 * @return
	 */
	int queryOrderListCount(Map<String, Object> map);
	
	/**
	 * 查询用户订单列表的子订单列表
	 * @param map
	 * @return
	 */
	List<Map<String, Object>> querySonOrderList(Map<String, Object> map);
	
	/**
	 * 查询各个状态下的订单数量
	 * @param map
	 * @return
	 */
	List<Map<String, Object>> queryOrderStatusCount(Map<String, Object> map);
}
