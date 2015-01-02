package com.liaochente.pms.ordermanager.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bean.Order;
import bean.Product;
import bean.UserInfo;

import com.liaochente.pms.ordermanager.dao.OrderDao;
import com.liaochente.pms.ordermanager.service.OrderService;
import com.liaochente.pms.shoppingcart.cart.ShoppingCart;
import com.liaochente.pms.util.CommonConst;
import com.liaochente.pms.util.CommonUtil;
import com.liaochente.pms.util.PageHelp;

/**
 * 订单相关操作ServiceImpl
 * 
 * @author 廖陈特
 * 
 */
public class OrderServiceImpl implements OrderService {

	private OrderDao dao;

	public OrderDao getDao() {
		return dao;
	}

	public void setDao(OrderDao dao) {
		this.dao = dao;
	}

	@Override
	public int addOrder(ShoppingCart cart, UserInfo userInfo, Order order) {
		String orderNumber = cart.getOrderNumber();
		List<Product> list = cart.getCart();
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("order_number", orderNumber);
		paramMap.put("user_id", userInfo.getId());
		paramMap.put("start_date",
				CommonUtil.getNowDateToString(CommonConst.DATE_FORMAT_TYPE_TWO));
		paramMap.put("status", CommonConst.ORDER_AFFIRM_STATUS);
		paramMap.put("user_message", order.getUser_message());
		paramMap.put("consignee_address", order.getConsignee_address());
		paramMap.put("consignee_phone", order.getConsignee_phone());
		paramMap.put("shipping_method", order.getShipping_method());
		paramMap.put("postcode", order.getPostcode());
		paramMap.put("consignee_name", order.getConsignee_name());
		dao.addOrder(paramMap);
		int order_id = dao.selectOrderId(paramMap);
		paramMap.put("order_id", order_id);
		for (Product product : list) {
			paramMap.put("product_id", product.getId());
			paramMap.put("num", product.getNumber());
			paramMap.put("price", product.getPrice() * product.getDiscount());
			paramMap.put("product_color_id", CommonUtil.isNotNull(product.getColor_id()) ? product.getColor_id() : null);
			dao.addSonOrder(paramMap);
		}
		return order_id;
	}
	
	/**
	 * 查询订单详细信息
	 * @param order
	 * @return
	 */
	@Override
	public Map<String, Object> queryOrderDetail(Order order) {
		Map<String, Object> result = null;
		result = CommonUtil.converListToMap(dao.queryOrderDetail(order));
		if(CommonUtil.isNotNullToMap(result)) {
			List<Map<String, Object>> list = dao.querySonOrderDetail(order);
			result.put(CommonConst.SON_ORDER_DETAIL_KEY, list);
		}
		return result;
	}

	@Override
	public List<Map<String, Object>> queryOrderList(UserInfo user,PageHelp pageHelp) {
		List<Map<String, Object>> list = null;
		Map<String, Object> map = new HashMap<String, Object>();
		if(null != user) {
			map.put("user_id", user.getId());
			if(null != pageHelp) {
				pageHelp.putLimitParam(map);
			}
			list = dao.queryOrderList(map);
			if(CommonUtil.isNotNullToList(list)) {
				for(Map<String, Object> sonMap : list) {
					sonMap.put("list", dao.querySonOrderList(sonMap));
				}
			}
		}
		return list;
	}
	
	@Override
	public Map<String, Object> queryOrderStatusCount(UserInfo user) {
		Map<String, Object> map = new HashMap<String, Object>();
		if(null != user) {
			map.put("user_id", user.getId());
			List<Map<String, Object>> list = dao.queryOrderStatusCount(map);
			map = CommonUtil.converListToMap(list);
		}
		return map;
	}

	@Override
	public int queryOrderListCount(UserInfo user) {
		Map<String, Object> map = new HashMap<String, Object>();
		if(null != user) {
			map.put("user_id", user.getId());
		}
		return dao.queryOrderListCount(map);
	}
}
