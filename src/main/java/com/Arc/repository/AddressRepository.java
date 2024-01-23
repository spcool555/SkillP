package com.Arc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Arc.model.Address;

public interface AddressRepository extends JpaRepository<Address, Long> {

}
