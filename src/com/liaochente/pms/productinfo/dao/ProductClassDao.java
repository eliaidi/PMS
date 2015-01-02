package com.liaochente.pms.productinfo.dao;

import java.util.List;
import java.util.Map;

import bean.ProductClass;

public interface ProductClassDao {

	List<ProductClass> getProductClassInfo();

	boolean insertClassInfo(ProductClass prdClass);

	boolean updateClassInfo(ProductClass prdClass);

	boolean deleteClassInfo(Map<String, String> map);

}
