package com.Arc.model;

import java.util.Date;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "student_req")
public class StudentRequest {
	@Id
	@Column(name = "request_id")
	private String request_id;
	private String student_id;
	private String company_id;
	private Date creation_date;
	private Date updation_date;
	private Date expiration_date;
	private String request_msg;
	private String rejection_msg;
	private String technology;
	private int duration;
	private String advertisement_id;
	private String approval_status;
	private String college_req_msg;
	private String last_status;

	public String getRequest_id() {
		return request_id;
	}

	public void setRequest_id(String request_id) {
		this.request_id = request_id;
	}

	public String getStudent_id() {
		return student_id;
	}

	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}

	public String getCompany_id() {
		return company_id;
	}

	public void setCompany_id(String company_id) {
		this.company_id = company_id;
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

	public Date getExpiration_date() {
		return expiration_date;
	}

	public void setExpiration_date(Date expiration_date) {
		this.expiration_date = expiration_date;
	}

	public String getRequest_msg() {
		return request_msg;
	}

	public void setRequest_msg(String request_msg) {
		this.request_msg = request_msg;
	}

	public String getRejection_msg() {
		return rejection_msg;
	}

	public void setRejection_msg(String rejection_msg) {
		this.rejection_msg = rejection_msg;
	}

	public String getTechnology() {
		return technology;
	}

	public void setTechnology(String technology) {
		this.technology = technology;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public String getAdvertisement_id() {
		return advertisement_id;
	}

	public void setAdvertisement_id(String advertisement_id) {
		this.advertisement_id = advertisement_id;
	}

	public String getApproval_status() {
		return approval_status;
	}

	public void setApproval_status(String approval_status) {
		this.approval_status = approval_status;
	}

	public String getCollege_req_msg() {
		return college_req_msg;
	}

	public void setCollege_req_msg(String college_req_msg) {
		this.college_req_msg = college_req_msg;
	}

	public String getLast_status() {
		return last_status;
	}

	public void setLast_status(String last_status) {
		this.last_status = last_status;
	}
}
