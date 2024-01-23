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

import com.fasterxml.jackson.annotation.JsonFormat;


@Entity
@Table(name="student_test_data")
public class StudentTestData {
@Id
@Column(name="test_data_id")
String test_data_id;
String student_id;
String test_id;
String answer_set;
int marks_scored;
String status;
int out_off;
String against_ext_req;
String company_id;
Date creation_date;
Date updation_date;
@JsonFormat(shape=JsonFormat.Shape.STRING,  timezone="IST")
Date expiration_date;
public String getTest_data_id() {
	return test_data_id;
}
public void setTest_data_id(String test_data_id) {
	this.test_data_id = test_data_id;
}
public String getStudent_id() {
	return student_id;
}
public void setStudent_id(String student_id) {
	this.student_id = student_id;
}
public String getTest_id() {
	return test_id;
}
public void setTest_id(String test_id) {
	this.test_id = test_id;
}
public String getAnswer_set() {
	return answer_set;
}
public void setAnswer_set(String answer_set) {
	this.answer_set = answer_set;
}
public int getMarks_scored() {
	return marks_scored;
}
public void setMarks_scored(int marks_scored) {
	this.marks_scored = marks_scored;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public int getOut_off() {
	return out_off;
}
public void setOut_off(int out_off) {
	this.out_off = out_off;
}
public String getAgainst_ext_req() {
	return against_ext_req;
}
public void setAgainst_ext_req(String against_ext_req) {
	this.against_ext_req = against_ext_req;
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
public String getCompany_id() {
	return company_id;
}
public void setCompany_id(String company_id) {
	this.company_id = company_id;
}

}
