package com.liaochente.pms.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 查询帮助类
 * @author 廖陈特
 *
 */
public class SearchProductHelp
{
    private String id;
    
    private String name;
    
    private String size;
    
    private String price;
    
    private String watt;
    
    private String onhand;
    
    private String weight;
    
    private String other_param;
    
    private String productBrand;
    
    private String productClass;
    
    private String productColor;
    
    private Integer user_id;
    
    public Map<String,Object> toParameterMap() {
    	Map<String,Object> map = new HashMap<String, Object>();
    	map.put("id", id);
    	map.put("name", name);
    	map.put("size", size);
    	map.put("price", price);
    	map.put("productBrand", productBrand);
    	map.put("productClass", productClass);
    	map.put("productColor", productColor);
    	map.put("user_id", user_id);
    	return map;
    }

    public String getId()
    {
        return id;
    }
    
    public void setId(String id)
    {
        this.id = id;
    }
    
    public String getName()
    {
        return name;
    }
    
    public void setName(String name)
    {
        this.name = name;
    }
    
    public String getSize()
    {
        return size;
    }
    
    public void setSize(String size)
    {
        this.size = size;
    }
    
    public String getPrice()
    {
        return price;
    }
    
    public void setPrice(String price)
    {
        this.price = price;
    }
    
    public String getWatt()
    {
        return watt;
    }
    
    public void setWatt(String watt)
    {
        this.watt = watt;
    }
    
    public String getOnhand()
    {
        return onhand;
    }
    
    public void setOnhand(String onhand)
    {
        this.onhand = onhand;
    }
    
    public String getWeight()
    {
        return weight;
    }
    
    public void setWeight(String weight)
    {
        this.weight = weight;
    }
    
    public String getOther_param()
    {
        return other_param;
    }
    
    public void setOther_param(String other_param)
    {
        this.other_param = other_param;
    }
    
    public String getProductBrand()
    {
        return productBrand;
    }
    
    public void setProductBrand(String productBrand)
    {
        this.productBrand = productBrand;
    }
    
    public String getProductClass()
    {
        return productClass;
    }
    
    public void setProductClass(String productClass)
    {
        this.productClass = productClass;
    }
    
    public String getProductColor()
    {
        return productColor;
    }
    
    public void setProductColor(String productColor)
    {
        this.productColor = productColor;
    }

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
    
    
}