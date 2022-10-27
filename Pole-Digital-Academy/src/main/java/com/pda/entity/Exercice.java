package com.pda.entity;

import java.util.Date;

public class Exercice {
    private String year;
    private Date startDate;
    private Date endDate;

    public Exercice() {
    }

    public Exercice(String year, Date startDate, Date endDate) {
        this.year = year;
        this.startDate = startDate;
        this.endDate = endDate;
    }
}
