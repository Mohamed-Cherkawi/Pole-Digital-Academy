package com.pda.Services;

import com.pda.daos.AdminDao;
import com.pda.entities.Admin;
import com.pda.interfaces.AdminInterface;

import java.util.List;

public class AdminService implements AdminInterface {
    private AdminDao adminDao = new AdminDao();

    @Override
    public Admin select(int id) {
        return adminDao.select(id);
    }

    @Override
    public void add(Admin admin) {
        adminDao.add(admin);
    }
    @Override
    public Admin getAdminByUsernPass(String username , String password) {
        return adminDao.getAdminByUsernPass(username, password);
    }
    @Override
    public List<Admin> getAllAdmins() {
        return adminDao.getAllAdmins();
    }

    @Override
    public void update(int id , String name , String email , String username , boolean isActive) {
        adminDao.update(id , name , email , username , isActive);
    }

    @Override
    public void delete(Integer id) {
        adminDao.delete(id);
    }
}
