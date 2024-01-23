package com.Arc.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Arc.model.CompAdvertisement;
import com.Arc.model.User;
import com.Arc.repository.UserRepository;

@Service
public class UserService {

   
	@Autowired
    private UserRepository userRepository;
	
	@Autowired
	private ComponyService componyService;

    public User findByEmailAndOtp(String email, String otp) {
        return userRepository.findByEmailAndOtp(email, otp);
    }
    
    public User saveUser(User user) {
		return userRepository.save(user);
    	
    }
    
    
    public boolean isValidUser(String email, String password) {
        // Retrieve user from the database based on the email
        Optional<User> optionalUser = userRepository.findByEmail(email);
        if (optionalUser.isPresent()) {
            // User found in the database
            User user = optionalUser.get();
            // Compare the provided password with the stored hashed password
            if (password.equals(user.getPassword())) {
                // Passwords match, user is valid
                return true;
            }
        }
        return false;
}

	public Optional<User> getUserByEmail(String email) {
		// TODO Auto-generated method stub
		return userRepository.findByEmail(email);
	}

	public List<User> findAll() {
	    return userRepository.findAll();
	}

	public User getUserById(Long id) {
	    return userRepository.findById(id).orElse(null);
	}

	public void deleteUserById(Long id) {
		userRepository.deleteById(id);
		
	}

	public List<User> findAllByManager() {
	    return userRepository.getUserByManger();
	}

	public List<User> findAllByManagerDeleted() {
		// TODO Auto-generated method stub
		return userRepository.getUserByMangerDeleted();
	}

	public List<CompAdvertisement> findAllAdv() {
		// TODO Auto-generated method stub
		return componyService.getAllCompAdvertisements() ;
	}
	
	





}
