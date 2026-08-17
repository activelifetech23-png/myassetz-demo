package com.credible.response;

import java.util.List;

public class ApiBlogCenterResponse 
{
	private Integer status;
	private String status_msg;
	private String msg;
	private int pageId;
	private String category_name;
	
	private int blogsPageCount;
	private int beginPaginatorId;
	private int endPaginatorId;
	private List<String> categoryList;
	
	private List<ApiBlogsResponse> list;
	
	private int pageCount;

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getStatus_msg() {
		return status_msg;
	}

	public void setStatus_msg(String status_msg) {
		this.status_msg = status_msg;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public int getPageId() {
		return pageId;
	}

	public void setPageId(int pageId) {
		this.pageId = pageId;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public int getBlogsPageCount() {
		return blogsPageCount;
	}

	public void setBlogsPageCount(int blogsPageCount) {
		this.blogsPageCount = blogsPageCount;
	}

	public int getBeginPaginatorId() {
		return beginPaginatorId;
	}

	public void setBeginPaginatorId(int beginPaginatorId) {
		this.beginPaginatorId = beginPaginatorId;
	}

	public int getEndPaginatorId() {
		return endPaginatorId;
	}

	public void setEndPaginatorId(int endPaginatorId) {
		this.endPaginatorId = endPaginatorId;
	}

	public List<String> getCategoryList() {
		return categoryList;
	}

	public void setCategoryList(List<String> categoryList) {
		this.categoryList = categoryList;
	}

	public List<ApiBlogsResponse> getList() {
		return list;
	}

	public void setList(List<ApiBlogsResponse> list) {
		this.list = list;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	
	
	
	
}
