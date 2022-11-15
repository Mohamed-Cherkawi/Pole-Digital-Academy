package com.pda.entities;

import com.pda.enums.ManagerType;
import jakarta.persistence.*;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "managers")
public class Manager extends User implements Serializable {

    private String domain;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private ManagerType type;

    @OneToMany(mappedBy = "manager",cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Activity> activities = new ArrayList<>();

    public Manager() { }

    public Manager(String name , String email, String domain, ManagerType type) {
        super(name, email);
        this.domain = domain;
        this.type = type;
    }

    public void setDomain(String domain) { this.domain = domain; }
    public void setType(ManagerType type) { this.type = type; }
    public void setActivities(List<Activity> activities) { this.activities = activities; }

    public String getDomain() { return domain; }
    public ManagerType getType() { return type; }
    public List<Activity> getActivities() { return activities; }

}
