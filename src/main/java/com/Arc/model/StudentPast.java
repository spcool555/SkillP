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
import lombok.Data;

import com.fasterxml.jackson.annotation.JsonFormat;
@Data
@Entity
@Table(name="students_past")
public class StudentPast {
	@Id
	@Column(name="stud_past_id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	Long stud_past_id;
	Long student_id;
	String category;
	String profile;
	String organization;
	String board;
	String department;
	String location;
	String start_date;
	String end_date;
	String description;
	String link;
	Date creation_date;
	Date updation_date;
	
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public long getStud_past_id() {
		return stud_past_id;
	}
	public void setStud_past_id(long stud_past_id) {
		this.stud_past_id = stud_past_id;
	}

	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getOrganization() {
		return organization;
	}
	public void setOrganization(String organization) {
		this.organization = organization;
	}
	public String getBoard() {
		return board;
	}
	public void setBoard(String board) {
		this.board = board;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
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
