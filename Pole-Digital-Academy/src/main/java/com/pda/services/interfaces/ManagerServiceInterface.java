package com.pda.services.interfaces;

import com.pda.entities.Admin;

import com.pda.entities.Manager;

import java.util.List;

public interface ManagerServiceInterface {

    void add(Admin admin);
    Manager getManagerId(Integer id);
    Manager getManagerByEmail(String email);
    List<Manager> getAllManager();
    void delete(Integer id);

}
