package com.pda.entity;

public class Participant extends User {
    private String domain;
    private String structure;

    public Participant() {
    }

    public Participant(String domain, String structure) {
        this.domain = domain;
        this.structure = structure;
    }
}
