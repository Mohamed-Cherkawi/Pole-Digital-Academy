package com.pda.daos.interfaces;

import com.pda.entities.Admin;

import com.pda.entities.Manager;

import java.util.List;

public interface ManagerDaoInterface {

    void add(Manager manager);
    Manager getManagerId(Integer id);
    Manager getManagerByEmail(String email);
    List<Manager> getAllManager();
    void delete(Integer id);

}
