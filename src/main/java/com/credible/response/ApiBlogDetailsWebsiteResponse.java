package com.credible.response;

import java.util.Date;


import java.util.List;

import com.credible.model.Blogs;



public class ApiBlogDetailsWebsiteResponse 
{
	private int status;
	private String status_msg;
	private String msg;
	private int id;
	private String title;
	private String title_or_category;
	
	private Blogs blogs;
    
	
	
	private String blog_url;
	private String title_folder;
	private String category_name;	 
	private String author_name;
	private String content;
	private String url;
	private Date create_date;
	private String photo;
	private String image;
	private Integer viewed_count;
	private List<String> categoryList;
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
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
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTitle_or_category() {
		return title_or_category;
	}
	public void setTitle_or_category(String title_or_category) {
		this.title_or_category = title_or_category;
	}
	public Blogs getBlogs() {
		return blogs;
	}
	public void setBlogs(Blogs blogs) {
		this.blogs = blogs;
	}
	public String getBlog_url() {
		return blog_url;
	}
	public void setBlog_url(String blog_url) {
		this.blog_url = blog_url;
	}
	public String getTitle_folder() {
		return title_folder;
	}
	public void setTitle_folder(String title_folder) {
		this.title_folder = title_folder;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public String getAuthor_name() {
		return author_name;
	}
	public void setAuthor_name(String author_name) {
		this.author_name = author_name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Integer getViewed_count() {
		return viewed_count;
	}
	public void setViewed_count(Integer viewed_count) {
		this.viewed_count = viewed_count;
	}
	public List<String> getCategoryList() {
		return categoryList;
	}
	public void setCategoryList(List<String> categoryList) {
		this.categoryList = categoryList;
	}
	
	
	
	
	
}
