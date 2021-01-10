package com.doo.app.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name="project")
@Getter
@Setter
public class Project {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "description")
    private String description;

    @Column(name = "assigned_person")
    private String assignedPerson;

    @Column(name = "status")
    private String status;

    @Column(name = "date_created")
    @CreationTimestamp
    private Date dateCreated;

    @Column(name = "last_updated")
    @UpdateTimestamp
    private Date lastUpdated;

    @OneToMany(mappedBy = "project",
            cascade = {CascadeType.MERGE, CascadeType.PERSIST})
    private Set<Task> tasks = new HashSet<>();

    public void add(Task task) {
        if (tasks == null) {
            tasks = new HashSet<>();
        }

        tasks.add(task);
        task.setProject(this);
    }
}
