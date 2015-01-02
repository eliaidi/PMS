package com.liaochente.pms.productinfo.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bean.Product;

import com.liaochente.pms.productinfo.dao.RecommendProductDao;
import com.liaochente.pms.productinfo.service.RecommendProductService;
import com.liaochente.pms.util.SearchProductHelp;

public class RecommendProductServiceImpl implements RecommendProductService
{
    private RecommendProductDao dao;

    @Override
    public List<Map<String, Object>> getLedRecommendProductInfo()
    {
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("is_led_recommend", 1);
        return dao.getRecommendProductInfo(map);
    }

    @Override
    public List<Map<String, Object>> getIndexRecommendProductInfo()
    {
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("is_index_recommend", 1);
        return dao.getRecommendProductInfo(map);
    }

    public RecommendProductDao getDao()
    {
        return dao;
    }

    public void setDao(RecommendProductDao dao)
    {
        this.dao = dao;
    }
    
}
