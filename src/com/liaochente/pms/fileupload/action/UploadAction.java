package com.liaochente.pms.fileupload.action;

import java.io.File;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.SessionAware;

import bean.UserInfo;

import com.liaochente.pms.util.CommonConst;
import com.opensymphony.xwork2.ActionSupport;

public class UploadAction extends ActionSupport implements SessionAware
{
    private Map<String,Object> session;
    /**
     * 上传的文件
     */
    private File images;
    /**
     * 文件名
     */
    private String imagesFileName;
    
    /**
     * 文件类型
     */
    private String imagesContentType;
    
    /**
     * 保存文件的File
     */
    private File saveFile;
    
    private int status = CommonConst.HANDLE_STATUS_NO;
    
    @Override
    public String execute()
        throws Exception
    {
        UserInfo user = (UserInfo)session.get(CommonConst.USER_INFO_KEY);
        if (images != null) {
            saveFile = new File(CommonConst.IMAGES_HEAD_SAVE_PATH + imagesFileName + "." + imagesContentType);
            FileUtils.copyFile(images, saveFile);
        }
        session.remove(CommonConst.FILE_UPLOAD_STATUS_KEY);
        status = CommonConst.HANDLE_STATUS_YES;
        return SUCCESS;
    }
    
    @Override
    public void setSession(Map<String, Object> session)
    {
        this.session = session;
    }

    public Map<String, Object> getSession()
    {
        return session;
    }

    public File getImages()
    {
        return images;
    }

    public String getImagesFileName()
    {
        return imagesFileName;
    }

    public String getImagesContentType()
    {
        return imagesContentType;
    }

    public void setImages(File images)
    {
        this.images = images;
    }

    public void setImagesFileName(String imagesFileName)
    {
        this.imagesFileName = imagesFileName;
    }

    public void setImagesContentType(String imagesContentType)
    {
        this.imagesContentType = imagesContentType;
    }

    public File getSaveFile()
    {
        return saveFile;
    }

    public void setSaveFile(File saveFile)
    {
        this.saveFile = saveFile;
    }

    public int getStatus()
    {
        return status;
    }

    public void setStatus(int status)
    {
        this.status = status;
    }
    
}
