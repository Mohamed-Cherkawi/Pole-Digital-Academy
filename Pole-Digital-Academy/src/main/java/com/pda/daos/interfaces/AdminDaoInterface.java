package com.pda.daos.interfaces;

import com.pda.entities.Admin;

import java.util.List;

public interface AdminDaoInterface {

    void add(Admin admin);
    Admin getAdminByEmail(String email);
    List<Admin> getAllAdmins();
    void delete(Integer id);

}
