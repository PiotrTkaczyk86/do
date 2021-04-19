package com.doo.app.dao;

import com.doo.app.entity.Task;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ActiveProfiles;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
@ActiveProfiles("test")
class TaskRepositoryTest {

    @Autowired
    private TaskRepository repository;

    @Test
    public void testAmountOfAllTasks() {
        List<Task> tasks = repository.findAll();

        assertThat(tasks).hasSize(3);
    }

    @Test
    public void testAmountOfTasksInProject() {
        List<Task> tasks = repository.findAll().stream().filter(t -> t.getProject().getId()==1L).collect(Collectors.toList());

        assertThat(tasks).hasSize(2);
    }

    @Test
    public void testDescriptionOfTheTask() {
        Optional<Task> task = repository.findById(3L);

        assertThat(task.isPresent()).isTrue();

        task.ifPresent(value -> assertThat(value.getDescription()).isEqualTo("Check if name of this task exists"));
    }
}