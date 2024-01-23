package com.Arc.service;

import java.util.List;

import com.Arc.model.College;

public interface CollegeService {
	

    // Method to save a college entity
    boolean saveCollege(College college);

    // Method to update a college entity
    void updateCollege(College college);

    // Method to delete a college entity by ID
    void deleteCollegeById(Long collegeId);

    // Method to get a college entity by ID
    College getCollegeById(Long collegeId);

    // Method to get all colleges
    List<College> getAllColleges();

	List<College> getAllTieColleges();



	List<College> findAllByType(short type);

	List<College> getAllTieCollegesByType();

	
	
}
