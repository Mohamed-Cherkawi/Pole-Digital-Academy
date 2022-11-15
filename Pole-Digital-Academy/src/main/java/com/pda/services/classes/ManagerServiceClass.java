package com.pda.services.classes;

import com.pda.daos.classes.ManagerDaoClass;

import com.pda.entities.Admin;

import com.pda.entities.Manager;

import com.pda.services.interfaces.ManagerServiceInterface;

import java.util.List;

public class ManagerServiceClass implements ManagerServiceInterface {

    ManagerDaoClass managerDaoClass = new ManagerDaoClass();

    @Override
    public void add(Admin admin) { }

    @Override
    public Manager getManagerId(Integer id) { return managerDaoClass.getManagerId(id); }

    @Override
    public Manager getManagerByEmail(String email) { return managerDaoClass.getManagerByEmail(email); }

    @Override
    public List<Manager> getAllManager() { return  managerDaoClass.getAllManager(); }

    @Override
    public void delete(Integer id) { }

}
