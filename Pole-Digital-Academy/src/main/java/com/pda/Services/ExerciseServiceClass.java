package com.pda.Services;

import com.pda.daos.ExerciseDaoClass;
import com.pda.entities.Exercise;
import com.pda.interfaces.GenericServiceInterface;

import java.util.List;

public class ExerciseServiceClass implements GenericServiceInterface<Exercise> {

    ExerciseDaoClass exerciseDaoClass = new ExerciseDaoClass();


    @Override
    public void add(Exercise exercise) { exerciseDaoClass.add(exercise); }

    @Override
    public Exercise getById(Integer id) { return exerciseDaoClass.getById(id); }

    @Override
    public Exercise getByEmail(String email) { return null; }

    @Override
    public List<Exercise> getAll() { return exerciseDaoClass.getAll(); }

    @Override
    public void delete(Integer id) { }
}