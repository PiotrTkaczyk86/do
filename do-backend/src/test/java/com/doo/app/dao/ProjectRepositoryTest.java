package com.doo.app.dao;

import com.doo.app.entity.Project;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ActiveProfiles;

import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
@ActiveProfiles("test")
class ProjectRepositoryTest {

    @Autowired
    private ProjectRepository repository;

    @Test
    public void testFindAll() {
        List<Project> projects = repository.findAll();
        assertThat(projects).hasSize(2);
    }

    @Test
    public void testAmountOfTasksInProject() {
        Optional<Project> project = repository.findById(2L);

        assertThat(project.isPresent()).isTrue();

        project.ifPresent(value -> assertThat(value.getTasks()).hasSize(1));
    }

    @Test
    public void testFindByIdAndCheckByName() {
        Optional<Project> project = repository.findById(1L);

        assertThat(project.isPresent()).isTrue();

        project.ifPresent(value -> assertThat(value.getName()).isEqualTo("do. project"));
    }
}