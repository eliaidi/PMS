package bean;

import java.util.HashMap;
import java.util.Map;

/**
 * 用户信息BEAN
 * @author Administrator
 *
 */
public class UserInfo
{
    /**
     * 主键ID
     */
    private int id;
    
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
    private int age;
    /**
     * 性别
     */
    private int sex;
    /**
     * 安全码
     */
    private long securityPassword;
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
    private int freeze;
    /**
     * 权限
     */
    private int powerid;
    /**
     * 真实姓名
     */
    private String real_name;
    /**
     * 身份证
     */
    private String identity_card;
    
    /**
     * 用户等级
     */
    private Power power;
    
    public Map<String, Object> toParameterMap()
    {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("id", id);
        map.put("username", username);
        map.put("password", password);
        map.put("age", age);
        map.put("sex", sex);
        map.put("securityPassword", securityPassword);
        map.put("email", email);
        map.put("phone", phone);
        map.put("imagesPath", imagesPath);
        map.put("freeze", freeze);
        map.put("powerid", powerid);
        map.put("real_name", real_name);
        map.put("identity_card", identity_card);
        return map;
    }
    
    public int getId()
    {
        return id;
    }
    
    public void setId(int id)
    {
        this.id = id;
    }
    
    public String getUsername()
    {
        return username;
    }
    
    public void setUsername(String username)
    {
        this.username = username;
    }
    
    public String getPassword()
    {
        return password;
    }
    
    public void setPassword(String password)
    {
        this.password = password;
    }
    
    public int getAge()
    {
        return age;
    }
    
    public void setAge(int age)
    {
        this.age = age;
    }
    
    public int getSex()
    {
        return sex;
    }
    
    public void setSex(int sex)
    {
        this.sex = sex;
    }
    
    public String getEmail()
    {
        return email;
    }
    
    public void setEmail(String email)
    {
        this.email = email;
    }
    
    public String getPhone()
    {
        return phone;
    }
    
    public void setPhone(String phone)
    {
        this.phone = phone;
    }
    
    public String getImagesPath()
    {
        return imagesPath;
    }
    
    public void setImagesPath(String imagesPath)
    {
        this.imagesPath = imagesPath;
    }
    
    public int getFreeze()
    {
        return freeze;
    }
    
    public void setFreeze(int freeze)
    {
        this.freeze = freeze;
    }
    
    public int getPowerid()
    {
        return powerid;
    }
    
    public void setPowerid(int powerid)
    {
        this.powerid = powerid;
    }

    public String getReal_name()
    {
        return real_name;
    }

    public String getIdentity_card()
    {
        return identity_card;
    }

    public void setReal_name(String real_name)
    {
        this.real_name = real_name;
    }

    public void setIdentity_card(String identity_card)
    {
        this.identity_card = identity_card;
    }

    public long getSecurityPassword()
    {
        return securityPassword;
    }

    public void setSecurityPassword(long securityPassword)
    {
        this.securityPassword = securityPassword;
    }

	public Power getPower() {
		return power;
	}

	public void setPower(Power power) {
		this.power = power;
	}
    
}
