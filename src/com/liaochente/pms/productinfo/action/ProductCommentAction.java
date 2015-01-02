package com.liaochente.pms.productinfo.action;

import java.util.List;
import java.util.Map;

import com.liaochente.pms.common.action.BaseAction;
import com.liaochente.pms.productinfo.service.ProductCommentService;

public class ProductCommentAction extends BaseAction {
	
	private ProductCommentService commentService;
	
	private List<Map<String, Object>> commentList;
}
