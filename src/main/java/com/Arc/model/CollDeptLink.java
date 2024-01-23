package com.Arc.model;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;

import jakarta.persistence.Id;

import jakarta.persistence.Table;

@Entity
@Table(name="coll_dept_link")
public class CollDeptLink {

@Id
@Column(name="coll_dept_link_id")
private String coll_dept_link_id;


public String getColl_dept_link_id() {
	return coll_dept_link_id;
}
public void setColl_dept_link_id(String coll_dept_link_id) {
	this.coll_dept_link_id = coll_dept_link_id;
}
private String college_id;
private int dept_id;
private String head_id;
private Date creation_date;
private Date updation_date;
private String iii_dept_co_id;
private String balance_data_id;
private Date effective_date;
private Date expiration_date;
private String status;

public String getStatus() {
	return status;
}
public String isStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getIii_dept_co_id() {
	return iii_dept_co_id;
}
public void setIii_dept_co_id(String iii_dept_co_id) {
	this.iii_dept_co_id = iii_dept_co_id;
}
public String getBalance_data_id() {
	return balance_data_id;
}
public void setBalance_data_id(String balance_data_id) {
	this.balance_data_id = balance_data_id;
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
public String getCollege_id() {
	return college_id;
}
public void setCollege_id(String college_id) {
	this.college_id = college_id;
}

public int getDept_id() {
	return dept_id;
}
public void setDept_id(int dept_id) {
	this.dept_id = dept_id;
}
public String getHead_id() {
	return head_id;
}
public void setHead_id(String head_id) {
	this.head_id = head_id;
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

}
