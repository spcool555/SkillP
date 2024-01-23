package com.Arc.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.Arc.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
	Optional<User> findByEmail(String email);
	User findByEmailAndOtp(String email, String otp);
	
	@Query(value = "SELECT * FROM user u WHERE u.role = '4' AND u.type = 0", nativeQuery = true)
	List<User> getUserByManger();
	@Query(value = "SELECT * FROM user u WHERE u.role = '4' AND u.type = 1", nativeQuery = true)
	List<User> getUserByMangerDeleted();
}
