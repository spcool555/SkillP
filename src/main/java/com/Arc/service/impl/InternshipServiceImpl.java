package com.Arc.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Arc.model.Internships;
import com.Arc.repository.InternshipRepository;
import com.Arc.service.InternshipService;
@Service
public class InternshipServiceImpl implements InternshipService {

	@Autowired
	private InternshipRepository internshipRepository;
	@Override
	public void saveInternship(Internships internships) {
		// TODO Auto-generated method stub
		internshipRepository.save(internships);
	}
	@Override
	public List<Internships> getUserDataListByUserId(Long userId) {
		// TODO Auto-generated method stub
		return internshipRepository.findAllByStudentId(userId);
	}
	@Override
	public List<Internships> getUserDataListByUserId2(Long userId) {
		// TODO Auto-generated method stub
		return internshipRepository.findAllByStudentId2(userId);
	}
	@Override
	public List<Internships> getUserDataListByUserId3(Long userId) {
		// TODO Auto-generated method stub
		return internshipRepository.findAllByStudentId3(userId);
	}
	@Override
	public List<Internships> getUserDataListByUserId4(Long userId) {
		// TODO Auto-generated method stub
		return internshipRepository.findAllByStudentId4(userId);
	}


	

	

}
