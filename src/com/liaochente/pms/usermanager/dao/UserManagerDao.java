package com.liaochente.pms.usermanager.dao;

import java.util.Map;

/**
 * 用户操作相关Dao
 * @author 廖陈特
 *
 */
public interface UserManagerDao
{
    void insertUser(Map<String,Object> map);
    
    void updateUser(Map<String,Object> map);
    
    void deleteUser(String id);
    
    int checkUserName(String userName);
}
