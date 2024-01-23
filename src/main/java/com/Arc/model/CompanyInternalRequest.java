package com.Arc.model;

import java.util.Date;

 
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
 
import jakarta.persistence.Id;
 
import jakarta.persistence.Table;

@Entity
@Table(name = "comp_internal_req")
public class CompanyInternalRequest {
    @Id
    @Column(name="request_id")
	private String request_id;
	private String user_id;
	private Date creation_date;
	private Date updation_date;
	private Date expiration_date;
	
	
	public Date getExpiration_date() {
		return expiration_date;
	}
	public void setExpiration_date(Date expiration_date) {
		this.expiration_date = expiration_date;
	}
	private String request_msg;
	private String rejection_msg;
	private String for_college;
	private String technology;
	private int duration;
	private String advertisement_id;
	private String for_team;
	private String against_ext_req;
	private String for_users;
	private String approval_status;
	private String comp_balance_id;
	private String coll_balance_id;
	
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
	public String getFor_college() {
		return for_college;
	}
	public void setFor_college(String for_college) {
		this.for_college = for_college;
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
	public String getAdvertisment_id() {
		return advertisement_id;
	}
	public void setAdvertisment_id(String advertisment_id) {
		this.advertisement_id = advertisment_id;
	}
	public String getFor_team() {
		return for_team;
	}
	public void setFor_team(String for_team) {
		this.for_team = for_team;
	}
	public String getAgainst_ext_req() {
		return against_ext_req;
	}
	public void setAgainst_ext_req(String against_ext_req) {
		this.against_ext_req = against_ext_req;
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
	public String getAdvertisement_id() {
		return advertisement_id;
	}
	public void setAdvertisement_id(String advertisement_id) {
		this.advertisement_id = advertisement_id;
	}
	public String getComp_balance_id() {
		return comp_balance_id;
	}
	public void setComp_balance_id(String comp_balance_id) {
		this.comp_balance_id = comp_balance_id;
	}
	public String getColl_balance_id() {
		return coll_balance_id;
	}
	public void setColl_balance_id(String coll_balance_id) {
		this.coll_balance_id = coll_balance_id;
	}
}
