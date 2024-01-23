package com.Arc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Arc.model.Address;
import com.Arc.model.College;
import com.Arc.repository.AddressRepository;
import com.Arc.repository.CollegeRepository;
import com.Arc.service.CollegeService;

import jakarta.transaction.Transactional;

@Service
public class CollegeServiceImpl implements CollegeService {

    @Autowired
    private CollegeRepository collegeRepo;

    
    @Autowired
    private AddressRepository addressRepository;

   
    @Override
    public void deleteCollegeById(Long collegeId) {
        collegeRepo.deleteById(collegeId);
    }

    @Override
    public College getCollegeById(Long collegeId) {
        return collegeRepo.findById(collegeId).orElse(null);
    }

    @Override
    public List<College> getAllColleges() {
        return collegeRepo.findAll();
    }

	@Override
	public boolean saveCollege(College college) {
		collegeRepo.save(college);
		return false;
		
	}

	@Override
	public void updateCollege(College college) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<College> getAllTieColleges() {
		// TODO Auto-generated method stub
		return collegeRepo.findAllTieCollege();
	}

	@Override
	public List<College> findAllByType(short type) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<College> getAllTieCollegesByType() {
		// TODO Auto-generated method stub
		return collegeRepo.findAllByType();
	}








}
