package com.Arc.model;

import java.util.Date;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="company_test")
public class CompanyTest {

	@Id
	@Column(name="test_id")
	String test_id;
	String company_id;
	String test_name;
	String test_type;
	int test_time;
	int total_marks;
	int cut_off;
	int total_ques;
	int mark_per_ques;
	Date creation_date;
	Date updation_date;
	Date expiration_date;
	String status;
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getTest_id() {
		return test_id;
	}
	public void setTest_id(String test_id) {
		this.test_id = test_id;
	}
	public String getCompany_id() {
		return company_id;
	}
	public void setCompany_id(String company_id) {
		this.company_id = company_id;
	}
	public String getTest_name() {
		return test_name;
	}
	public void setTest_name(String test_name) {
		this.test_name = test_name;
	}
	public String getTest_type() {
		return test_type;
	}
	public void setTest_type(String test_type) {
		this.test_type = test_type;
	}
	public int getTest_time() {
		return test_time;
	}
	public void setTest_time(int test_time) {
		this.test_time = test_time;
	}
	public int getTotal_marks() {
		return total_marks;
	}
	public void setTotal_marks(int total_marks) {
		this.total_marks = total_marks;
	}
	public int getCut_off() {
		return cut_off;
	}
	public void setCut_off(int cut_off) {
		this.cut_off = cut_off;
	}
	public int getTotal_ques() {
		return total_ques;
	}
	public void setTotal_ques(int total_ques) {
		this.total_ques = total_ques;
	}
	public int getMark_per_ques() {
		return mark_per_ques;
	}
	public void setMark_per_ques(int mark_per_ques) {
		this.mark_per_ques = mark_per_ques;
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
	
	
	
}
