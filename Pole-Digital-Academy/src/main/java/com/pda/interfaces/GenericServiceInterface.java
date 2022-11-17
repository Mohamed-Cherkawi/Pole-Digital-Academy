package com.pda.interfaces;

import java.util.List;

public interface GenericServiceInterface<T> {

    void add(T type);
    T getById(Integer id);
    T getByEmail(String email);
    List<T> getAll();
    void delete(Integer id);

}