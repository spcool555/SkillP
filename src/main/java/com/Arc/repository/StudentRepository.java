package com.Arc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Arc.model.Student;

public interface StudentRepository extends JpaRepository<Student, Long> {

}
