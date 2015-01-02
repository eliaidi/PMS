package com.liaochente.pms.productinfo.service;

import java.util.List;
import java.util.Map;

import com.liaochente.pms.util.PageHelp;
import com.liaochente.pms.util.SearchProductHelp;

public interface ProductCommentService
{
    /**
     * 获取跟产品相关的评价信息
     */
    List<Map<String, Object>> getProductCommentInfo(SearchProductHelp searchHelp);
    
    /**
     * 获取评论总条数
     * @param searchHelp
     * @return
     */
    int getProductCommentCount(SearchProductHelp searchHelp);
    
    /**
     * 查询产品评价信息列表(分页)
     * @param map
     * @return
     */
    List<Map<String, Object>> getProductCommentList(SearchProductHelp searchHelp, PageHelp pageHelp);

    /**
     * 查询产品评价信息总数(分页)
     * @param map
     * @return
     */
    int getProductCommentListCount(SearchProductHelp searchHelp);
}
