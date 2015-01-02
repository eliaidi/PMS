package com.liaochente.pms.login.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.Action;

import org.apache.struts2.ServletActionContext;

import com.liaochente.pms.util.CommonConst;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

/**
 * 校验是否登录拦截器
 * @author liaote
 *
 */
public class LoginInterceptor_temp implements Interceptor
{
    
    /**
     * serialVersionUID
     */
    private static final long serialVersionUID = -2610345692644842398L;
    
    public void destroy()
    {
        
    }
    
    public void init()
    {
        
    }
    
    @Override
    public String intercept(ActionInvocation in)
        throws Exception
    {
        Map<String, Object> map = in.getInvocationContext().getParameters();
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession();
        setToGoingURL(request,session,in);
        //已经登录的直接返回原来页面
        if (session.getAttribute(CommonConst.USER_INFO_KEY) != null)
        {
            return Action.DEFAULT;
        }
        return in.invoke();
    }
    
    private void setToGoingURL(HttpServletRequest request, HttpSession session, ActionInvocation invocation)
    {
        //如果referer不为空 直接使用它。如果为空我们分别获得命名空间，action名,以及请求参数   
        //从新构造成一个URL保存在session中   
        String url = request.getHeader("referer");
        if (url == null || url.equals(""))
        {
            url = "";
            String path = request.getContextPath();
            String actionName = invocation.getProxy().getActionName();
            String nameSpace = invocation.getProxy().getNamespace();
            if (null != nameSpace && !"".equals(nameSpace))
            {
                url = url + path + nameSpace;
                
            }
            if (null != actionName && !"".equals(actionName))
            {
                url = url + "/" + actionName + ".action" + "?";
            }
            
            Map<String, String[]> paramMap = request.getParameterMap();
            if (paramMap != null)
            {
                for (String param : paramMap.keySet())
                {
                    String[] value = paramMap.get(param);
                    for (String val : value)
                    {
                        url = url + param + "=" + val + "&";
                    }
                }
            }
        }
        session.setAttribute(CommonConst.LAST_PAGE_KEY, url);
    }
    
}
