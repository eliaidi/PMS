package com.liaochente.pms.usermanager.action;

import java.util.List;
import java.util.Map;

import bean.UserInfo;

import com.liaochente.pms.common.action.BaseAction;
import com.liaochente.pms.ordermanager.service.OrderService;
import com.liaochente.pms.productinfo.service.ProductCommentService;
import com.liaochente.pms.usermanager.service.UserManagerService;
import com.liaochente.pms.util.CommonConst;
import com.liaochente.pms.util.CommonUtil;
import com.liaochente.pms.util.PageHelp;
import com.liaochente.pms.util.SearchProductHelp;

public class UserManagerAction extends BaseAction {

	private UserManagerService service;
	
	private OrderService orderService;
	
	private Map<String, Object> orderCountMap;
	
	private ProductCommentService commentService;
	
	private List<Map<String, Object>> commentList;
	
	private PageHelp commentPageHelp;
	
	private SearchProductHelp commentSearchHelp;
	
	public String goUserCenter() {
		UserInfo user = (UserInfo)session.get(CommonConst.USER_INFO_KEY);
		orderCountMap = orderService.queryOrderStatusCount(user);
		this.commentPageHelp = new PageHelp();
		this.commentPageHelp.setPageSize(8);
		this.commentSearchHelp = new SearchProductHelp();
		this.commentSearchHelp.setUser_id(user.getId());
		commentList = commentService.getProductCommentList(commentSearchHelp, commentPageHelp);
		int rowCount = commentService.getProductCommentListCount(commentSearchHelp);
		this.commentPageHelp.setRowCount(rowCount);
		return SUCCESS;
	}

	public UserManagerService getService() {
		return service;
	}

	public void setService(UserManagerService service) {
		this.service = service;
	}

	public OrderService getOrderService() {
		return orderService;
	}

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}

	public Map<String, Object> getOrderCountMap() {
		return orderCountMap;
	}

	public void setOrderCountMap(Map<String, Object> orderCountMap) {
		this.orderCountMap = orderCountMap;
	}

	public ProductCommentService getCommentService() {
		return commentService;
	}

	public void setCommentService(ProductCommentService commentService) {
		this.commentService = commentService;
	}

	public List<Map<String, Object>> getCommentList() {
		return commentList;
	}

	public void setCommentList(List<Map<String, Object>> commentList) {
		this.commentList = commentList;
	}

	public PageHelp getCommentPageHelp() {
		return commentPageHelp;
	}

	public void setCommentPageHelp(PageHelp commentPageHelp) {
		this.commentPageHelp = commentPageHelp;
	}

	public SearchProductHelp getCommentSearchHelp() {
		return commentSearchHelp;
	}

	public void setCommentSearchHelp(SearchProductHelp commentSearchHelp) {
		this.commentSearchHelp = commentSearchHelp;
	}

}
