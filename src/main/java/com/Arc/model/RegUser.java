package com.Arc.model;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

import jakarta.persistence.Table;

@Entity
@Table(name="reg_user")
public class RegUser {

	@Id
	/*@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user_generator")
	@SequenceGenerator(name="user_generator", sequenceName = "user_id_seq", allocationSize=1)*/
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
	private String user_id;
	private String psswrd_data;
	private Date creation_date;
	private Date updation_date;
	private Date effective_date;
	private Date expiration_date;
	private String expiration_rsn;
	private String email_id;
	private int role;
	private Date last_login;
	private String temp_pass;
	private int login_attempt;
	private String institute_id;
	private boolean acc_verified;
	private boolean email_verified;
	private boolean mob_verified;
	private String username;
	private Long contact_no;
	private String user_text;
	private String gender;
	private byte[] signature;
	public byte[] getSignature() {
		return signature;
	}

	public void setSignature(byte[] signature) {
		this.signature = signature;
	}
	public Date getEffective_date() {
		return effective_date;
	}

	public void setEffective_date(Date effective_date) {
		this.effective_date = effective_date;
	}

	public Date getExpiration_date() {
		return expiration_date;
	}

	public void setExpiration_date(Date expiration_date) {
		this.expiration_date = expiration_date;
	}

	public String getUser_text() {
		return user_text;
	}

	public void setUser_text(String user_text) {
		this.user_text = user_text;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setAcc_verified(boolean acc_verified) {
		this.acc_verified = acc_verified;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String user_name) {
		this.username = user_name;
	}

	public Long getContact_no() {
		return contact_no;
	}

	public void setContact_no(Long contact_no) {
		this.contact_no = contact_no;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getPsswrd_data() {
		return psswrd_data;
	}

	public void setPsswrd_data(String psswrd_data) {
		this.psswrd_data = psswrd_data;
	}

	public Date getCreation_date() {
		return creation_date;
	}

	public void setCreation_date(Date creation_date) {
		this.creation_date = creation_date;
	}

	public Date getUpdation_date() {
		return updation_date;
	}

	public void setUpdation_date(Date updation_date) {
		this.updation_date = updation_date;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public Date getLast_login() {
		return last_login;
	}

	public void setLast_login(Date last_login) {
		this.last_login = last_login;
	}

	public String getTemp_pass() {
		return temp_pass;
	}

	public void setTemp_pass(String temp_pass) {
		this.temp_pass = temp_pass;
	}

	public int getLogin_attempt() {
		return login_attempt;
	}

	public void setLogin_attempt(int login_attempt) {
		this.login_attempt = login_attempt;
	}

	public String getInstitute_id() {
		return institute_id;
	}

	public void setInstitute_id(String institute_id) {
		this.institute_id = institute_id;
	}

	public boolean isAcc_verified() {
		return acc_verified;
	}

	public void setAcc_verified(Boolean acc_verified) {
		if (null != acc_verified) {
			this.acc_verified = acc_verified;
		} else {
			this.acc_verified = false;
		}
	}

	public boolean isEmail_verified() {
		return email_verified;
	}

	public void setEmail_verified(boolean email_verified) {
		this.email_verified = email_verified;
	}

	public boolean isMob_verified() {
		return mob_verified;
	}

	public void setMob_verified(boolean mob_verified) {
		this.mob_verified = mob_verified;
	}

	public String getExpiration_rsn() {
		return expiration_rsn;
	}

	public void setExpiration_rsn(String expiration_rsn) {
		this.expiration_rsn = expiration_rsn;
	}
}
