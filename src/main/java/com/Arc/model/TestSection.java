package com.Arc.model;

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
@Table(name="test_section")
public class TestSection {

	@Id
	@Column(name="section_id")
	String section_id;
	String test_id;
	String section_name;
	int section_time;
	int total_ques;
	int cut_off;
	int mark_per_ques;
	
	
	public String getSection_id() {
		return section_id;
	}
	public void setSection_id(String section_id) {
		this.section_id = section_id;
	}
	public String getTest_id() {
		return test_id;
	}
	public void setTest_id(String test_id) {
		this.test_id = test_id;
	}
	public String getSection_name() {
		return section_name;
	}
	public void setSection_name(String section_name) {
		this.section_name = section_name;
	}
	public int getSection_time() {
		return section_time;
	}
	public void setSection_time(int section_time) {
		this.section_time = section_time;
	}
	public int getTotal_ques() {
		return total_ques;
	}
	public void setTotal_ques(int total_ques) {
		this.total_ques = total_ques;
	}
	public int getCut_off() {
		return cut_off;
	}
	public void setCut_off(int cut_off) {
		this.cut_off = cut_off;
	}
	public int getMark_per_ques() {
		return mark_per_ques;
	}
	public void setMark_per_ques(int mark_per_ques) {
		this.mark_per_ques = mark_per_ques;
	}
	
	
	
}
