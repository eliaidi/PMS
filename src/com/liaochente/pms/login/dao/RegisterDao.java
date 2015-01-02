package com.liaochente.pms.login.dao;

import java.util.List;
import java.util.Map;

/**
 * 注册相关操作Dao
 * @author 廖陈特
 *
 */
public interface RegisterDao
{
    /**
     * 获取注册协议信息
     * @param map
     * @return
     */
    List<Map<String,Object>> getRegisterTreatyInfo(Map<String, Object> map);
    
}
