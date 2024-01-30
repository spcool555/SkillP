package com.Arc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.Arc.model.Internships;

public interface InternshipRepository extends JpaRepository<Internships, Long> {

	@Query("SELECT i FROM Internships i WHERE i.student_id = :studentId AND i.type=0")
	List<Internships> findAllByStudentId(@Param("studentId") Long studentId);
	@Query("SELECT i FROM Internships i WHERE i.student_id = :studentId AND i.type=1")
	List<Internships> findAllByStudentId2(@Param("studentId") Long studentId);
	@Query("SELECT i FROM Internships i WHERE i.student_id = :studentId AND i.type=2")
	List<Internships> findAllByStudentId3(@Param("studentId") Long studentId);
	@Query("SELECT i FROM Internships i WHERE i.student_id = :studentId AND i.type=3")
	List<Internships> findAllByStudentId4(@Param("studentId") Long studentId);
	

	


	

}
