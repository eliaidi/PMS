package com.liaochente.pms.shoppingcart.cart;

import java.util.List;

import bean.Product;

/**
 * 购物车接口
 * 
 * @author 廖陈特
 * 
 */
public interface ShoppingCart {

	public int getSize();

	public void addProduct(Product product);

	public void removeProduct(String strId);

	public void removeProduct(String id, String colorId);

	public void clearAll();

	public List<Product> getCart();

	public void setCart(List<Product> cart);

	public String getOrderNumber();

	public void setOrderNumber(String orderNumber);

}
