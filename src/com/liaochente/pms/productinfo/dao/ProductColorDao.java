package com.liaochente.pms.productinfo.dao;

import java.util.List;

import bean.ProductColor;

public interface ProductColorDao
{
    /**
     * 获取颜色列表
     * @return
     */
    List<ProductColor> getProductColorInfo();
    /**
     * 根据产品Id 获取产品的颜色列表
     * @param productId
     * @return
     */
    List<ProductColor> getProductColorRec(String productId);
}
