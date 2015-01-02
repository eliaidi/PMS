package com.liaochente.pms.productinfo.dao;

import java.util.List;
import java.util.Map;

import com.liaochente.pms.util.PageHelp;
import com.liaochente.pms.util.SearchProductHelp;

public interface ProductCommentDao
{
    /**
     * 获取单个产品的评论信息
     * 
     * @param productId
     * @return
     */
    List<Map<String, Object>> getProductCommentInfo(String productId);

    /**
     * 获取评论总条数
     * @param productId
     * @return
     */
    int getProductCommentCount(String productId);
    
    /**
     * 查询产品评价信息列表(分页)
     * @param map
     * @return
     */
    List<Map<String, Object>> getProductCommentList(Map<String, Object> map);

    /**
     * 查询产品评价信息总数(分页)
     * @param map
     * @return
     */
    int getProductCommentListCount(Map<String, Object> map);
}
