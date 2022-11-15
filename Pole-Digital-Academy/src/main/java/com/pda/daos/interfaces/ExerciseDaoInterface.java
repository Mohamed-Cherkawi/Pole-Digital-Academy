package com.pda.daos.interfaces;

import com.pda.entities.Exercise;

import java.util.List;

public interface ExerciseDaoInterface {

    void add(Exercise exercise);
    Exercise getExerciseById(Integer id);
    List<Exercise> getAllExercises();
    void delete(Integer id);

}
