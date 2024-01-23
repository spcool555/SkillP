package com.Arc.model;

import java.sql.Date;
import java.time.LocalDate;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Data;
@Data
@Entity
@Table(name = "company_data2")
public class Company {
	@Id
	@Column(name = "company_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long company_id;
	private String company_name;
	private LocalDate creation_date;
	private LocalDate updation_date;
	private LocalDate estd_date;
	private byte[] logo;
	private Long contact_1;
	private Long contact_2;
	private String web_url;
	private String email_id;
	private String registration_no;
	private String about;
	private String line_1;
	private String line_2;
	private String city;
	private String state;
	private String country;
	private Integer pincode;
	public LocalDate expiration_date;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="address_id")
	private Address address;
	
	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Long getCompany_id() {
		return company_id;
	}

	public void setCompany_id(Long company_id) {
		this.company_id = company_id;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public LocalDate getCreation_date() {
		return creation_date;
	}

	public void setCreation_date(LocalDate creation_date) {
		this.creation_date = creation_date;
	}

	public LocalDate getUpdation_date() {
		return updation_date;
	}

	public void setUpdation_date(LocalDate updation_date) {
		this.updation_date = updation_date;
	}

	public LocalDate getEstd_date() {
		return estd_date;
	}

	public void setEstd_date(LocalDate estd_date) {
		this.estd_date = estd_date;
	}

	public byte[] getLogo() {
		return logo;
	}

	public void setLogo(byte[] logo) {
		this.logo = logo;
	}

	

	public Long getContact_1() {
		return contact_1;
	}

	public void setContact_1(Long contact_1) {
		this.contact_1 = contact_1;
	}

	public Long getContact_2() {
		return contact_2;
	}

	public void setContact_2(Long contact_2) {
		this.contact_2 = contact_2;
	}

	public String getWeb_url() {
		return web_url;
	}

	public void setWeb_url(String web_url) {
		this.web_url = web_url;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getRegistration_no() {
		return registration_no;
	}

	public void setRegistration_no(String registration_no) {
		this.registration_no = registration_no;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	public LocalDate getExpiration_date() {
		return expiration_date;
	}

	public void setExpiration_date(LocalDate expiration_date) {
		this.expiration_date = expiration_date;
	}
}
