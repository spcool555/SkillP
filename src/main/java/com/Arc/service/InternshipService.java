package com.Arc.service;

import java.util.List;

import com.Arc.model.Internships;

public interface InternshipService {

	

	void saveInternship(Internships internships);

	

	List<Internships> getUserDataListByUserId(Long userId);



	List<Internships> getUserDataListByUserId2(Long userId);



	List<Internships> getUserDataListByUserId3(Long userId);



	List<Internships> getUserDataListByUserId4(Long userId);

	

}
