package com.Arc.repository;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.Arc.model.College;

public interface CollegeRepository extends JpaRepository<College, Long> {
    @Query(value = "SELECT * FROM College WHERE expiration_date >= :expirationDate OR expiration_date IS NULL", nativeQuery = true)
public    List<College> getAllColleges(@Param("expirationDate") Date expirationDate);
    
@Query(value ="SELECT * FROM new.college\r\n"	+ "ORDER BY college_id  DESC LIMIT 1",nativeQuery = true)
public College getLastCollege();

@Query(value = "SELECT * FROM new.college_data4 where type=0", nativeQuery = true)
public List<College> findAllTieCollege();
@Query(value = "SELECT * FROM new.college_data4 where type=1", nativeQuery = true)
public List<College> findAllByType();




}

