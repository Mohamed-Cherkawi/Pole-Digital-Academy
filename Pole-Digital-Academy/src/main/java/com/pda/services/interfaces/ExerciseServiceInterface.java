package com.pda.services.interfaces;

import com.pda.entities.Exercise;

import java.util.List;

public interface ExerciseServiceInterface {

    void add(Exercise exercise);
    Exercise getExerciseById(Integer id);
    List<Exercise> getAllExercises();
    void delete(Integer id);

}
