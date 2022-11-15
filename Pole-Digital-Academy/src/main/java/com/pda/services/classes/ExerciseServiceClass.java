package com.pda.services.classes;

import com.pda.daos.classes.ExerciseDaoClass;
import com.pda.entities.Exercise;
import com.pda.services.interfaces.ExerciseServiceInterface;

import java.util.List;

public class ExerciseServiceClass implements ExerciseServiceInterface {

    ExerciseDaoClass exerciseDaoClass = new ExerciseDaoClass();

    @Override
    public void add(Exercise exercise) { exerciseDaoClass.add(exercise); }

    @Override
    public Exercise getExerciseById(Integer id) { return exerciseDaoClass.getExerciseById(id); }

    @Override
    public List<Exercise> getAllExercises() { return exerciseDaoClass.getAllExercises(); }

    @Override
    public void delete(Integer id) { }
}
