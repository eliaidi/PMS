package com.liaochente.pms.productinfo.service.impl;

import java.util.List;
import java.util.Map;

import bean.ProductClass;

import com.liaochente.pms.productinfo.dao.ProductClassDao;
import com.liaochente.pms.productinfo.service.ProductClassService;

public class ProductClassServiceImpl implements ProductClassService {

    private ProductClassDao dao;
    
    public List<ProductClass> getProductClassInfo()
    {
        return dao.getProductClassInfo();
    }

    public ProductClassDao getDao()
    {
        return dao;
    }

    public void setDao(ProductClassDao dao)
    {
        this.dao = dao;
    }
}
