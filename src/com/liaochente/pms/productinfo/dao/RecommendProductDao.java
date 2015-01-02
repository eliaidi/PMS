package com.liaochente.pms.productinfo.dao;

import java.util.List;
import java.util.Map;

import bean.Product;

/**
 * 推荐产品Dao
 * @author 廖陈特
 *
 */
public interface RecommendProductDao
{
    /**
     * 获取推荐商品列表
     * @param map
     * @return
     */
    List<Map<String,Object>> getRecommendProductInfo(Map<String,Object> map);
}
