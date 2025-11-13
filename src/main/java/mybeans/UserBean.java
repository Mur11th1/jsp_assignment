package com.group.bean;

import java.io.Serializable;

public class UserBean implements Serializable {
    private static final long serialVersionUID = 1L;

    // Form fields
    private String name;
    private String address;
    private int age;
    private String phone;
    private String country;

    // Default Constructor (Required)
    public UserBean() {
    }

    // Business logic (The "perform some task" part)
    public String registerUser() {
        // This method simulates saving or processing the user details.
        // In a real app, you would add database code here.
        if (name == null || name.trim().isEmpty()) {
            return "Registration Failed: Name is missing.";
        }
        return "Registration Successful! User: " + name + ", from " + country + ".";
    }

    // --- Getters and Setters ---
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}
