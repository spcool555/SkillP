package com.Arc.model;

import java.util.Date;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;

import jakarta.persistence.Id;

import jakarta.persistence.Table;

@Entity
@Table(name = "external_req")
public class ExternalRequest {
	@Id
	@Column(name = "request_id")
	private String request_id;
	private String from_user_id;
	private String for_user_id;
	private Date creation_date;
	private Date updation_date;
	private String approval_status;
	private String request_msg;
	private String rejection_msg;
    private Date expiration_date;
    private String technology;
	private int duration;
	private String student_ids;
	private String advertisement_id;
	private String last_status;

	public String getRequest_id() {
		return request_id;
	}

	public void setRequest_id(String request_id) {
		this.request_id = request_id;
	}

	public String getFrom_user_id() {
		return from_user_id;
	}

	public void setFrom_user_id(String from_user_id) {
		this.from_user_id = from_user_id;
	}

	public String getFor_user_id() {
		return for_user_id;
	}

	public void setFor_user_id(String for_user_id) {
		this.for_user_id = for_user_id;
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

	public String getApproval_status() {
		return approval_status;
	}

	public void setApproval_status(String approval_status) {
		this.approval_status = approval_status;
	}

	public String getAdvertisement_id() {
		return advertisement_id;
	}

	public void setAdvertisement_id(String advertisement_id) {
		this.advertisement_id = advertisement_id;
	}

	public String getStudent_ids() {
		return student_ids;
	}

	public void setStudent_ids(String student_ids) {
		this.student_ids = student_ids;
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

	public String getLast_status() {
		return last_status;
	}

	public void setLast_status(String last_status) {
		this.last_status = last_status;
	}
}
