package com.pda.Services;

import com.pda.daos.ManagerDaoClass;
import com.pda.entities.Manager;
import com.pda.interfaces.GenericServiceInterface;

import java.util.List;

public class ManagerServiceClass implements GenericServiceInterface<Manager> {

    ManagerDaoClass managerDaoClass = new ManagerDaoClass();

    @Override
    public void add(Manager manager) { }

    @Override
    public Manager getById(Integer id) { return managerDaoClass.getById(id); }

    @Override
    public Manager getByEmail(String email) { return managerDaoClass.getByEmail(email); }

    @Override
    public List<Manager> getAll() { return managerDaoClass.getAll(); }

    @Override
    public void delete(Integer id) { }

}
