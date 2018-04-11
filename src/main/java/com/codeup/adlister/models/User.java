package com.codeup.adlister.models;

import com.codeup.adlister.util.Password;

public class User {
    private long id;
    private String username;
    private String email;
    private String password;
    private String first_name;
    private String last_name;
    private int zipcode;
    private long mobile_number;
    private long language_id;

    public User(long id, String username, String email, String password, String first_name, String last_name, int zipcode, long mobile_number) {}

    public User(String username, String email, String password, String first_name, String last_name, int zipcode, long mobile_number, long language_id) {
        this.username = username;
        this.email = email;

        this.password = password;
        this.first_name = first_name;
        this.last_name = last_name;
//        setPassword(password);
        this.zipcode = zipcode;
        this.mobile_number = mobile_number;
        this.language_id = language_id;

    }

    public User(long id, String username, String email, String password,  String first_name, String last_name, int zipcode, long mobile_number, long language_id) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
        this.first_name = first_name;
        this.last_name = last_name;
        this.zipcode = zipcode;
        this.mobile_number = mobile_number;
        this.language_id = language_id;
    }


    //    special constuctor for register servlet line 198
    public User(String username, String email, String password, String first_name, String last_name, String zipcode, String mobile_number) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.first_name = first_name;
        this.last_name = last_name;
        this.zipcode = Integer.parseInt(zipcode);
        this.mobile_number = Long.parseLong(mobile_number);
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = Password.hash(password);
    }
    //    public void setPassword(String password) {this.password = password.hash(password)}

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public int getZipcode() {
        return zipcode;
    }

    public void setZipcode(int zipcode) {
        this.zipcode = zipcode;
    }

    public long getMobile_number() {
        return mobile_number;
    }

    public void setMobile_number(long mobile_number) {
        this.mobile_number = mobile_number;
    }

    public long getLanguage_id() {
        return language_id;
    }




}
