package com.pda.Services;

import com.pda.daos.AdminDao;
import com.pda.entities.Admin;
import com.pda.interfaces.AdminInterface;

import java.util.List;

public class AdminService implements AdminInterface {
    private AdminDao adminDao = new AdminDao();

    @Override
    public void add(Admin admin) {

    }
    @Override
    public Admin getAdminByEmail(String email) {

        return adminDao.getAdminByEmail(email);

    }
    @Override
    public List<Admin> getAllAdmins() {
        return null;
    }
    @Override
    public void delete(Integer id) {

    }
}
