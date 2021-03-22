package com.xue.entity.page;

public class PageSupport {

    private Integer currentPageNo;

    private Integer pageSize;

    private Integer totalCount;

    private Integer totalPageCount;


    public Integer getCurrentPageNo() {
        return currentPageNo;
    }

    public void setCurrentPageNo(Integer currentPageNo) {
        this.currentPageNo = currentPageNo;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Integer totalCount) {
        this.totalCount = totalCount;
    }

    public Integer getTotalPageCount() {
        totalPageCount = totalCount % pageSize == 0 ? totalCount / pageSize : totalCount / pageSize +1;
        return totalPageCount;
    }
}
