package com.liaochente.pms.fileupload.bean;

/**
 * 文件上传状态类
 * @author 廖陈特
 *
 */
public class FileUploadStatus
{
    /**
     * 已上传字节
     */
    private long readedBytes;
    /**
     * 总大小
     */
    private long totalBytes;
    
    private int currentItems;

    public long getReadedBytes()
    {
        return readedBytes;
    }

    public long getTotalBytes()
    {
        return totalBytes;
    }

    public int getCurrentItems()
    {
        return currentItems;
    }

    public void setReadedBytes(long readedBytes)
    {
        this.readedBytes = readedBytes;
    }

    public void setTotalBytes(long totalBytes)
    {
        this.totalBytes = totalBytes;
    }

    public void setCurrentItems(int currentItems)
    {
        this.currentItems = currentItems;
    }
}
