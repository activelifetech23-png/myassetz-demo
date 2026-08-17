package com.credible.response;



import java.time.OffsetDateTime;
import java.time.format.DateTimeFormatter;

public class ApiBlogsResponse {

    private int id;
    private String title;
    private String author_name;
    private String category_name;
    private int viewedCount;
    private int emailCount;
    private String create_date;   // raw ISO date string from DB/API
    private String short_content;
    private String image;
    private String url;
    private String title_folder;
    private String photo;

    // === GETTERS / SETTERS ===

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

    public String getAuthor_name() {
        return author_name;
    }
    public void setAuthor_name(String author_name) {
        this.author_name = author_name;
    }

    public String getCategory_name() {
        return category_name;
    }
    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    public int getViewedCount() {
        return viewedCount;
    }
    public void setViewedCount(int viewedCount) {
        this.viewedCount = viewedCount;
    }

    public int getEmailCount() {
        return emailCount;
    }
    public void setEmailCount(int emailCount) {
        this.emailCount = emailCount;
    }

    /**
     * Return formatted date (dd MMMM yyyy) instead of raw ISO string.
     * Example: "2023-02-08T18:30:00.000+00:00" -> "08 February 2023"
     */
    public String getCreate_date() {
        try {
            OffsetDateTime dateTime = OffsetDateTime.parse(create_date);
            return dateTime.format(DateTimeFormatter.ofPattern("dd MMM yyyy"));
        } catch (Exception e) {
            return create_date; // fallback to raw string if parsing fails
        }
    }
    public void setCreate_date(String create_date) {
        this.create_date = create_date;
    }

    public String getShort_content() {
        return short_content;
    }
    public void setShort_content(String short_content) {
        this.short_content = short_content;
    }

    public String getImage() {
        return image;
    }
    public void setImage(String image) {
        this.image = image;
    }

    public String getUrl() {
        return url;
    }
    public void setUrl(String url) {
        this.url = url;
    }

    public String getTitle_folder() {
        return title_folder;
    }
    public void setTitle_folder(String title_folder) {
        this.title_folder = title_folder;
    }

    public String getPhoto() {
        return photo;
    }
    public void setPhoto(String photo) {
        this.photo = photo;
    }
}
