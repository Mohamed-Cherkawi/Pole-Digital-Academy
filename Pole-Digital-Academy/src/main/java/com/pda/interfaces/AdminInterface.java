package com.pda.interfaces;

import java.util.List;
import com.pda.entities.Admin;

public interface AdminInterface {
    Admin select(int id);
    void add(Admin admin);
    Admin getAdminByUsernPass(String username,String password);
    List<Admin> getAllAdmins();
    void update(int id ,  String name , String email , String username , boolean isActive);
    void delete(Integer id);
}
