package com.liaochente.pms.usermanager.interceptor;

import java.util.List;

import org.apache.log4j.Logger;

import bean.Product;
import bean.UserInfo;

import com.liaochente.pms.common.action.BaseAction;
import com.liaochente.pms.common.interceptor.BaseInterceptor;
import com.liaochente.pms.shoppingcart.cart.ShoppingCart;
import com.liaochente.pms.util.CommonConst;
import com.liaochente.pms.util.CommonUtil;
import com.opensymphony.xwork2.ActionInvocation;

public class UserManagerInterceptor extends BaseInterceptor {

	private static final long serialVersionUID = 7587026322600960624L;
	
	private Logger logger = Logger.getLogger(UserManagerInterceptor.class);

	public String doPost(ActionInvocation inv) {
		try {
			UserInfo userInfo = session.get(CommonConst.USER_INFO_KEY) == null ? null
					: (UserInfo) session.get(CommonConst.USER_INFO_KEY);
			if (userInfo == null) {
				if(isNotNullLastPage) {
					return BaseAction.LAST;
				} else {
					return BaseAction.LOGIN;
				}
			}
//			ShoppingCart cart = session.get(CommonConst.SHOPPING_CART_KEY) == null ? null
//					: (ShoppingCart) session.get(CommonConst.SHOPPING_CART_KEY);
//			if (cart == null) {
//				if(isNotNullLastPage) {
//					return BaseAction.LAST;
//				} else {
//					return BaseAction.INPUT;
//				}
//			}
//			List<Product> list = cart.getCart();
//			if (!CommonUtil.isNotNullToList(list)) {
//				if(isNotNullLastPage) {
//					return BaseAction.LAST;
//				} else {
//					return BaseAction.INPUT;
//				}
//			}
			return inv.invoke();
		} catch (Exception e) {
			logger.error("Order Handler Interceptor:", e);
			e.printStackTrace();
		}
		return BaseAction.INPUT;
	}

}
