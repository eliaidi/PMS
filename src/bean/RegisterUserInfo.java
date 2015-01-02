package bean;

import java.util.HashMap;
import java.util.Map;

import com.liaochente.pms.util.CommonUtil;

/**
 * 注册用户专用Bean
 * @author 廖陈特
 *
 */
public class RegisterUserInfo
{
    
    /**
     * 用户名
     */
    private String username;
    /**
     * 密码
     */
    private String password;
    /**
     * 年龄
     */
    private String age;
    /**
     * 性别
     */
    private String sex;
    /**
     * 安全码
     */
    private String securityPassword;
    /**
     * 邮件
     */
    private String email;
    /**
     * 手机号码
     */
    private String phone;
    /**
     * 头像地址
     */
    private String imagesPath;
    /**
     * 是否冻结
     */
    private String freeze;
    /**
     * 权限
     */
    private String powerid;
    /**
     * 真实姓名
     */
    private String real_name;
    /**
     * 身份证
     */
    private String identity_card;
    
    public Map<String, Object> toParameterMap()
    {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("username", username);
        map.put("password", password);
        map.put("age", age);
        map.put("sex", sex);
        map.put("securityPassword", securityPassword);
        map.put("email", email);
        map.put("phone", phone);
        map.put("imagesPath", imagesPath);
        map.put("freeze", freeze);
        map.put("powerid",powerid);
        map.put("real_name", real_name);
        map.put("identity_card", identity_card);
        return map;
    }
    
    public String getUsername()
    {
        return username;
    }
    public String getPassword()
    {
        return password;
    }
    public String getAge()
    {
        return age;
    }
    public String getSex()
    {
        return sex;
    }
    public String getSecurityPassword()
    {
        return securityPassword;
    }
    public String getEmail()
    {
        return email;
    }
    public String getPhone()
    {
        return phone;
    }
    public String getImagesPath()
    {
        return imagesPath;
    }
    public String getFreeze()
    {
        return freeze;
    }
    public String getPowerid()
    {
        return powerid;
    }
    public String getReal_name()
    {
        return real_name;
    }
    public String getIdentity_card()
    {
        return identity_card;
    }
    public void setUsername(String username)
    {
        this.username = username;
    }
    public void setPassword(String password)
    {
        this.password = CommonUtil.base64Encoding(password);
    }
    public void setAge(String age)
    {
        this.age = age;
    }
    public void setSex(String sex)
    {
        this.sex = sex;
    }
    public void setSecurityPassword(String securityPassword)
    {
        this.securityPassword = securityPassword;
    }
    public void setEmail(String email)
    {
        this.email = email;
    }
    public void setPhone(String phone)
    {
        this.phone = phone;
    }
    public void setImagesPath(String imagesPath)
    {
        this.imagesPath = imagesPath;
    }
    public void setFreeze(String freeze)
    {
        this.freeze = freeze;
    }
    public void setPowerid(String powerid)
    {
        this.powerid = powerid;
    }
    public void setReal_name(String real_name)
    {
        this.real_name = real_name;
    }
    public void setIdentity_card(String identity_card)
    {
        this.identity_card = identity_card;
    }
}
