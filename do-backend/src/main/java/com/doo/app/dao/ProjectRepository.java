package com.doo.app.dao;

import com.doo.app.entity.Project;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
public interface ProjectRepository extends JpaRepository<Project, Long> {
}
