package com.pda.enums;

public enum ActivityType {
    FORMATION("formation") ,
    TALK("talk"),
    EVENEMENT("evenement");
    private final String activity;
    ActivityType(String activity) {
        this.activity = activity;
    }

    public String getActivity() {
        return activity;
    }
}
