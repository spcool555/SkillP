package com.Arc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.Arc.model.Internships;
import com.Arc.model.StudentPast;

public interface StudentPastRepository extends JpaRepository<StudentPast, Long> {

	@Query("SELECT sp FROM StudentPast sp WHERE sp.student_id = :studentId")
    List<StudentPast> findAllByStudentId(@Param("studentId") Long studentId);

}
