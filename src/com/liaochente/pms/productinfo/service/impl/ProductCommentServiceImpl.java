package com.liaochente.pms.productinfo.service.impl;

import java.util.List;
import java.util.Map;

import com.liaochente.pms.productinfo.dao.ProductCommentDao;
import com.liaochente.pms.productinfo.service.ProductCommentService;
import com.liaochente.pms.util.CommonUtil;
import com.liaochente.pms.util.PageHelp;
import com.liaochente.pms.util.SearchProductHelp;

public class ProductCommentServiceImpl implements ProductCommentService
{
    private ProductCommentDao dao;
    
    @Override
    public List<Map<String, Object>> getProductCommentInfo(
            SearchProductHelp searchHelp) {
        List<Map<String, Object>> list = null;
        if (CommonUtil.isNotNull(searchHelp.getId())) {
            list = dao.getProductCommentInfo(searchHelp.getId());
        }
        return list;
    }

    @Override
    public int getProductCommentCount(SearchProductHelp searchHelp) {
        return dao.getProductCommentCount(searchHelp.getId());
    }

    public ProductCommentDao getDao()
    {
        return dao;
    }

    public void setDao(ProductCommentDao dao)
    {
        this.dao = dao;
    }

	@Override
	public List<Map<String, Object>> getProductCommentList(
			SearchProductHelp searchHelp, PageHelp pageHelp) {
		Map<String, Object> map = searchHelp.toParameterMap();
		if(null != pageHelp) {
			map.put("startIndex", pageHelp.getSearchStart());
			map.put("endIndex", pageHelp.getSearchEnd());
		}
		List<Map<String, Object>> list = dao.getProductCommentList(map);
		return list;
	}

	@Override
	public int getProductCommentListCount(SearchProductHelp searchHelp) {
		Map<String, Object> map = searchHelp.toParameterMap();
		return dao.getProductCommentListCount(map);
	}
    
}
