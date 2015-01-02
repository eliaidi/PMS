package com.liaochente.pms.ordermanager.intercepter;

import java.util.List;

import org.apache.log4j.Logger;

import bean.Product;
import bean.UserInfo;

import com.liaochente.pms.common.action.BaseAction;
import com.liaochente.pms.common.interceptor.BaseInterceptor;
import com.liaochente.pms.common.interceptor.BaseMethodInterceptor;
import com.liaochente.pms.shoppingcart.cart.ShoppingCart;
import com.liaochente.pms.util.CommonConst;
import com.liaochente.pms.util.CommonUtil;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class OrderFormGenerateInterceptor extends BaseInterceptor {

	private static final long serialVersionUID = -109241582782431797L;

	private Logger logger = Logger
			.getLogger(OrderFormGenerateInterceptor.class);

	public String doPost(ActionInvocation inv) {
		try {
			UserInfo userInfo = session.get(CommonConst.USER_INFO_KEY) == null ? null
					: (UserInfo) session.get(CommonConst.USER_INFO_KEY);
			if (userInfo == null) {
					return BaseAction.LOGIN;
			}
			ShoppingCart cart = session.get(CommonConst.SHOPPING_CART_KEY) == null ? null
					: (ShoppingCart) session.get(CommonConst.SHOPPING_CART_KEY);
			if (cart == null) {
				return BaseAction.INPUT;
			}
			List<Product> list = cart.getCart();
			if (!CommonUtil.isNotNullToList(list)) {
				return BaseAction.INPUT;
			}
			result = inv.invoke();
		} catch (Exception e) {
			logger.error("Order Form Generate Interceptor:", e);
			e.printStackTrace();
		}
		return result;
	}
}
