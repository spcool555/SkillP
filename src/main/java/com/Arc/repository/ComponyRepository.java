package com.Arc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.Arc.model.CompAdvertisement;
import com.Arc.model.Company;

public interface ComponyRepository extends JpaRepository<Company, Long> {



	void save(CompAdvertisement company);
	
	@Query(value="select * from new.company_data2 c where c.email_id =:emailId" ,nativeQuery =true)
	public Company getCompanyDetailsById(@Param("emailId") String emailId);

}
