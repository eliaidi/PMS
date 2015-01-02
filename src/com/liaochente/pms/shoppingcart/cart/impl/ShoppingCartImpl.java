package com.liaochente.pms.shoppingcart.cart.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.liaochente.pms.shoppingcart.cart.ShoppingCart;
import com.liaochente.pms.util.CommonUtil;

import bean.Product;

/**
 * 购物车类
 * 
 * @author 廖陈特
 * 
 */
public class ShoppingCartImpl implements Serializable, ShoppingCart {
	/**
     * 
     */
	private static final long serialVersionUID = 1242890627809273671L;

	private int size;

	/**
	 * 购物车
	 */
	private List<Product> cart;

	/**
	 * 订单编号
	 */
	private String orderNumber;

	public ShoppingCartImpl() {
		cart = new ArrayList<Product>();
	}

	/**
	 * 获取购物车装载物品数量
	 * 
	 * @return
	 */
	public int getSize() {
		if (!CommonUtil.isNotNullToList(cart)) {
			cart = new ArrayList<Product>();
		}
		size = cart.size();
		return size;
	}

	/**
	 * 往购物车中新增一个物品
	 */
	public void addProduct(Product product) {
		for (Product pt : cart) {
			String ptName = pt.getName();
			String ptColor = pt.getColor_id();
			int ptNumber = pt.getNumber();
			if (ptName.equals(product.getName())
					&& ptColor.equals(product.getColor_id())) {
				pt.setNumber(ptNumber + product.getNumber());
				return;
			}
		}
		cart.add(product);
	}

	/**
	 * 从购物车中移除一个物品
	 */
	public void removeProduct(String id,String colorId) {
		if(null == colorId || "".equals(colorId)) {
			removeProduct(id);
			return;
		}
		List<Product> list = new ArrayList<Product>();
		for (Product param : cart) {
			if (id.equals(param.getId() + "") && colorId.equals(param.getColor_id())) {
				list.add(param);
			}
		}
		for (Product param : list) {
			cart.remove(param);
		}
	}
	/**
	 * 从购物车中移除一个物品
	 */
	public void removeProduct(String strId) {
		String[] arrays = strId.split(",");
		List<Product> list = new ArrayList<Product>();
		for (String _id : arrays) {
			for (Product param : cart) {
				if (_id.equals(param.getId() + "")) {
					list.add(param);
				}
			}
		}
		for (Product param : list) {
			cart.remove(param);
		}
	}

	/**
	 * 清空购物车
	 */
	public void clearAll() {
		cart.clear();
	}

	public List<Product> getCart() {
		return cart;
	}

	public void setCart(List<Product> cart) {
		this.cart = cart;
	}

	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}
}
