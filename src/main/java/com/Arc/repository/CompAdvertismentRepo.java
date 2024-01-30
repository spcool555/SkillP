package com.Arc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.Arc.model.CompAdvertisement;

public interface CompAdvertismentRepo extends JpaRepository<CompAdvertisement, Long> {

@Query(value="select * from  new.advertisements_comp a" ,nativeQuery= true)
List<CompAdvertisement> getAllCities();

}
