package com.liaochente.pms.fileupload.listener;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.ProgressListener;


import com.liaochente.pms.fileupload.bean.FileUploadStatus;
import com.liaochente.pms.util.CommonConst;

public class MyProgressListener implements ProgressListener
{
    
    private HttpSession session;
    
    private FileUploadStatus uploadStatus;
    
    public MyProgressListener(HttpServletRequest request)
    {
        session = request.getSession();
        uploadStatus = new FileUploadStatus();
        session.setAttribute(CommonConst.FILE_UPLOAD_STATUS_KEY, uploadStatus);
    }
    
    @Override
    public void update(long readedBytes, long totalBytes, int currentItems)
    {
        uploadStatus.setReadedBytes(readedBytes);
        uploadStatus.setTotalBytes(totalBytes);
        uploadStatus.setCurrentItems(currentItems);
    }
    
}
