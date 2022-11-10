package com.pda.services.interfaces;

import com.pda.entities.Admin;

import java.util.List;

public interface AdminServiceInterface {

    void add(Admin admin);
    Admin getAdminByEmail(String email);
    List<Admin> getAllAdmins();
    void delete(Integer id);

}
