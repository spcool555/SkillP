package com.Arc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Arc.model.CompAdvertisement;
import com.Arc.model.Company;

public interface ComponyRepository extends JpaRepository<Company, Long> {



	void save(CompAdvertisement company);
	
	

}
