package com.Arc.model;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;

import jakarta.persistence.Id;

import jakarta.persistence.Table;

@Entity
@Table(name = "coll_internal_req")
public class CollegeInternalRequest {
	@Id
	@Column(name = "request_id")
	private String request_id;
	private String user_id;
	private Date creation_date;
	private Date updation_date;
	private String approval_status;
	private String request_msg;
	private String rejection_msg;
	private String for_users;
	private Date expiration_date;
	private String technology;
	private int duration;
	private String for_company;
	private String advertisement_id;
    private String against_ext_req;
    private int for_dept;
    private String last_status;
    
	public String getRequest_id() {
		return request_id;
	}

	public void setRequest_id(String request_id) {
		this.request_id = request_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
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

	public String getFor_users() {
		return for_users;
	}

	public void setFor_users(String for_users) {
		this.for_users = for_users;
	}

	public String getApproval_status() {
		return approval_status;
	}

	public void setApproval_status(String approval_status) {
		this.approval_status = approval_status;
	}

	public String getRequest_msg() {
		return request_msg;
	}

	public void setRequest_message(String request_msg) {
		this.request_msg = request_msg;
	}

	public String getRejection_msg() {
		return rejection_msg;
	}

	public void setRejection_msg(String rejection_msg) {
		this.rejection_msg = rejection_msg;
	}

	public String getAgainst_ext_req() {
		return against_ext_req;
	}

	public void setAgainst_ext_req(String against_ext_req) {
		this.against_ext_req = against_ext_req;
	}

	public Date getExpiration_date() {
		return expiration_date;
	}

	public void setExpiration_date(Date expiration_date) {
		this.expiration_date = expiration_date;
	}

	public String getAdvertisement_id() {
		return advertisement_id;
	}

	public void setAdvertisement_id(String advertisement_id) {
		this.advertisement_id = advertisement_id;
	}

	public void setRequest_msg(String request_msg) {
		this.request_msg = request_msg;
	}

	public String getFor_company() {
		return for_company;
	}

	public void setFor_company(String for_company) {
		this.for_company = for_company;
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

	public int getFor_dept() {
		return for_dept;
	}

	public void setFor_dept(int for_dept) {
		this.for_dept = for_dept;
	}

	public String getLast_status() {
		return last_status;
	}

	public void setLast_status(String last_status) {
		this.last_status = last_status;
	}
}
