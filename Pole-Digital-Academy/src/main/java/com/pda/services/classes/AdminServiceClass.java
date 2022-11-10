package com.pda.services.classes;

import com.pda.daos.classes.AdminDaoClass;
import com.pda.entities.Admin;

import com.pda.services.interfaces.AdminServiceInterface;

import java.util.List;

public class AdminServiceClass implements AdminServiceInterface {

    private AdminDaoClass adminDaoClass = new AdminDaoClass();


    @Override
    public void add(Admin admin) {

    }

    @Override
    public Admin getAdminByEmail(String email) {

        return adminDaoClass.getAdminByEmail(email);

    }

    @Override
    public List<Admin> getAllAdmins() {
        return null;
    }

    @Override
    public void delete(Integer id) {

    }

}
