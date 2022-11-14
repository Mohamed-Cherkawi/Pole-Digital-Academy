package com.pda.repository;

public class adminRepository {
    public static final String SELECT_ALL_BY_EMAIL_PASS = "SELECT * FROM users WHERE user_email=:email AND password=:pass";

}
