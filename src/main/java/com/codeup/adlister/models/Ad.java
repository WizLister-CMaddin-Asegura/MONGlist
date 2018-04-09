package com.codeup.adlister.models;

public class Ad {
    private long id;
    private long userId;
    private String title;
    private String description;
    private long category_id;
    private String created_date;
    private boolean is_active;
    private boolean is_seller;
    private boolean is_buyer;
    private double expected_price;
    private String last_updated;

    public Ad(long id, long userId, String title, String description, long category_id, String created_date, boolean is_active, boolean is_seller, boolean is_buyer, double expected_price, String last_updated) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.category_id = category_id;
        this.created_date = created_date;
        this.is_active = is_active;
        this.is_seller = is_seller;
        this.is_buyer = is_buyer;
        this.expected_price = expected_price;
        this.last_updated = last_updated;

    }

    public Ad(long userId, String title, String description, long category_id, String created_date, boolean is_active, boolean is_seller, boolean is_buyer, double expected_price, String last_updated  ) {
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.category_id = category_id;
        this.created_date = created_date;
        this.is_active = is_active;
        this.is_seller = is_seller;
        this.is_buyer = is_buyer;
        this.expected_price = expected_price;
        this.last_updated = last_updated;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public long getCategory_id() {
        return category_id;
    }

    public void setCategory_id(long category_id) {
        this.category_id = category_id;
    }

    public String getCreated_date() {
        return created_date;
    }

    public void setCreated_date(String created_date) {
        this.created_date = created_date;
    }

    public boolean isIs_active() {
        return is_active;
    }

    public void setIs_active(boolean is_active) {
        this.is_active = is_active;
    }

    public boolean isIs_seller() {
        return is_seller;
    }

    public void setIs_seller(boolean is_seller) {
        this.is_seller = is_seller;
    }

    public boolean isIs_buyer() {
        return is_buyer;
    }

    public void setIs_buyer(boolean is_buyer) {
        this.is_buyer = is_buyer;
    }

    public double getExpected_price() {
        return expected_price;
    }

    public void setExpected_price(long expected_price) {
        this.expected_price = expected_price;
    }

    public String getLast_updated() {
        return last_updated;
    }

    public void setLast_updated(String last_updated) {
        this.last_updated = last_updated;
    }
}
