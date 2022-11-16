package com.pda.services.classes;

import com.pda.daos.classes.AdminDaoClass;
import com.pda.entities.Admin;

import com.pda.services.interfaces.AdminServiceInterface;
import com.pda.services.interfaces.GenericServiceInterface;

import java.util.List;

public class AdminServiceClass implements GenericServiceInterface<Admin> {

    private AdminDaoClass adminDaoClass = new AdminDaoClass();


    @Override
    public void add(Admin admin) { }

    @Override
    public Admin getById(Integer id) { return null; }

    @Override
    public Admin getByEmail(String email) { return adminDaoClass.getByEmail(email); }

    @Override
    public List<Admin> getAll() { return null; }

    @Override
    public void delete(Integer id) { }
}
