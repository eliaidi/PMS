package com.liaochente.pms.productinfo.service.impl;

import java.util.List;

import bean.ProductColor;

import com.liaochente.pms.productinfo.dao.ProductColorDao;
import com.liaochente.pms.productinfo.service.ProductColorService;

public class ProductColorServiceImpl implements ProductColorService
{
    private ProductColorDao dao;
    
    @Override
    public List<ProductColor> getProductColorInfo()
    {
        return dao.getProductColorInfo();
    }

    public ProductColorDao getDao()
    {
        return dao;
    }

    public void setDao(ProductColorDao dao)
    {
        this.dao = dao;
    }

    @Override
    public List<ProductColor> getProductColorRec(String productId)
    {
        return dao.getProductColorRec(productId);
    }
    
}
