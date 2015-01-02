package com.liaochente.pms.login.service;

import java.util.List;
import java.util.Map;

import bean.RegisterUserInfo;
import bean.UserInfo;

/**
 * 注册相关操作Service
 * @author 廖陈特
 *
 */
public interface RegisterService
{
    /**
     * 获取注册协议信息
     * @param map
     * @return
     */
    Map<String, Object> getRegisterTreatyInfo(Map<String, Object> map);
    
    /**
     * 注册用户
     * @param map
     */
    void registerUserInfo(Map<String, Object> map);
    
    /**
     * 检测用户名是否重复
     * @param userInfo
     * @return
     */
    boolean checkUserName(RegisterUserInfo userInfo);
}
