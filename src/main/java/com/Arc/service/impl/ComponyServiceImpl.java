package com.Arc.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Arc.model.CompAdvertisement;
import com.Arc.model.Company;
import com.Arc.repository.CompAdvertismentRepo;
import com.Arc.repository.ComponyRepository;
import com.Arc.service.ComponyService;

@Service
public class ComponyServiceImpl implements ComponyService {

	@Autowired
	private ComponyRepository compRepository;
	@Autowired
	private CompAdvertismentRepo advertismentRepo;
	
	public void saveCompony(Company compony) {
		compRepository.save(compony);
		
	}


	public void addAdvertisment(CompAdvertisement company) {
		compRepository.save(company);
		
	}


	@Override
	public List<CompAdvertisement> getAllCompAdvertisements() {
		// TODO Auto-generated method stub
		return advertismentRepo.findAll();
	}


	@Override
	public void delete(Long advId) {

		advertismentRepo.deleteById(advId);
		
	}



	


	

}
