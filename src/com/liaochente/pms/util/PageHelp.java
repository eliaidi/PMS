package com.liaochente.pms.util;

import java.util.Map;

/**
 * 分页处理类
 * 
 * @author liaote
 * 
 */
public class PageHelp
{
	
    /**
     * 当前页
     */
    private int currentPage = 1;
    
    /**
     * 上一页
     */
    private int lastPage = 0;
    
    /**
     * 下一页
     */
    private int nextPage = 0;
    
    /**
     * 总页数
     */
    private int totalPage = 0;
    
    /**
     * 总条数
     */
    private int rowCount = 0;
    
    /**
     * 一页多少条记录
     */
    private int pageSize = 15;
    
    private int searchStart;
    
    private int searchEnd;
    
    public void putLimitParam(Map<String,Object> map)
    {
    	map.put("startIndex", searchStart);
    	map.put("endIndex", searchEnd);
    }
    
    /**
     * 计算查询开始ID和结束ID
     */
    private void calculate()
    {
        this.searchStart = (this.currentPage - 1) * pageSize;
        this.searchEnd = this.currentPage * this.pageSize;
    }
    
    /**
     * 计算总页数
     */
    private void calculateTotalPage()
    {
        if (this.rowCount == 0)
        {
            totalPage = 1;
            return;
        }
        this.totalPage = this.rowCount / this.pageSize;
        if (this.rowCount % this.pageSize != 0)
        {
            this.totalPage++;
        }
    }
    
    public int getSearchStart()
    {
        return searchStart;
    }
    
    public void setSearchStart(int searchStart)
    {
        this.searchStart = searchStart;
    }
    
    public int getSearchEnd()
    {
        return searchEnd;
    }
    
    public void setSearchEnd(int searchEnd)
    {
        this.searchEnd = searchEnd;
    }
    
    public int getCurrentPage()
    {
        return currentPage;
    }
    
    public void setCurrentPage(int currentPage)
    {
        this.currentPage = currentPage == 0 ? 1 : currentPage;
        this.lastPage = this.currentPage - 1;
        this.nextPage = this.currentPage + 1;
        this.calculate();
    }
    
    public int getLastPage()
    {
        return lastPage;
    }
    
    public void setLastPage(int lastPage)
    {
        this.lastPage = lastPage;
    }
    
    public int getNextPage()
    {
        return nextPage;
    }
    
    public void setNextPage(int nextPage)
    {
        this.nextPage = nextPage;
    }
    
    public int getTotalPage()
    {
        return totalPage;
    }
    
    public void setTotalPage(int totalPage)
    {
        this.totalPage = totalPage;
    }
    
    public int getRowCount()
    {
        return rowCount;
    }
    
    public void setRowCount(int rowCount)
    {
        this.rowCount = rowCount;
        this.calculateTotalPage();
    }
    
    public int getPageSize()
    {
        return pageSize;
    }
    
    public void setPageSize(int pageSize)
    {
        this.pageSize = pageSize;
        this.calculate();
    }
}
