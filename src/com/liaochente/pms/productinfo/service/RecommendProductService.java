package com.liaochente.pms.productinfo.service;

import java.util.List;
import java.util.Map;

import com.liaochente.pms.util.SearchProductHelp;

import bean.Product;

/**
 * 产品推荐Service
 * @author liaote
 *
 */
public interface RecommendProductService
{
    /**
     * 获取广告推荐商品列表
     * @param map
     * @return
     */
    List<Map<String,Object>> getLedRecommendProductInfo();
    
    /**
     * 获取首页商品列表
     * @param map
     * @return
     */
    List<Map<String,Object>> getIndexRecommendProductInfo();
}
