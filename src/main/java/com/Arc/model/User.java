package com.Arc.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

//User.java
@Entity
@Data
public class User {
 @Id
 @GeneratedValue(strategy = GenerationType.IDENTITY)
 private Long id;

 private String username;
 private String password;
 private String email;
 private String otp;
 private String department;
 private Long contact_no;
 private String team_name;   // this used temrory because this field come from another table please check latter
 private short type;
 private String gender;
 
 public User(Long id, String username, String password, String email, String otp, String department, Long contact_no,
		String role, boolean verified) {
	super();
	this.id = id;
	this.username = username;
	this.password = password;
	this.email = email;
	this.otp = otp;
	this.department = department;
	this.contact_no = contact_no;
	this.role = role;
	this.verified = verified;
}	

public User() {
	// TODO Auto-generated constructor stub
}

private String role;
 
 private boolean verified;

 // getters and setters
}
