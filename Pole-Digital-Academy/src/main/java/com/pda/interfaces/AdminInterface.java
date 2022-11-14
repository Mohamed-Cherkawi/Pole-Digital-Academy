package com.pda.interfaces;

import java.util.List;
import com.pda.entities.Admin;

public interface AdminInterface {
    void add(com.pda.entities.Admin admin);
    Admin getAdminByEmail(String email);
    List<Admin> getAllAdmins();
    void delete(Integer id);
}
