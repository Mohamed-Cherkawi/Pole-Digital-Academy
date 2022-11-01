package com.pda.enums;

public enum ManagerType {
    //formateur, intervenant
    FORMATEUR("formateur") ,
    INTERVENANT("intervenant");
    private final String function;
    ManagerType(String function) {
        this.function = function;
    }

    public String getFunction() {
        return function;
    }
}
