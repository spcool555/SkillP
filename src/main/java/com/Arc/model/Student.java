package com.Arc.model;

import java.util.Arrays;
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
@Table(name = "student_data")
public class Student {
	@Id
	@Column(name = "student_id")
	private Long student_id;
	private String student_name;
	private Date creation_date;
	private Date updation_date;
	@JsonFormat(shape=JsonFormat.Shape.STRING, timezone="IST")
	private Date d_o_b;
	private String email_id;
	private Long contact;
	private byte[] photo;
	private Date effective_date;
	private Date expiration_date;
	private String curr_city;
	private String home_city;
	private String curr_year;
	private String curr_enroll_no;
	private Date valid_till;
	private String skills;
	private String interest;
	private String hobbies;
	private String achievements;
	private String request_status;
	private String device_id;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="curr_education")
	private StudentPast studentPast;

	public Long getStudent_id() {
		return student_id;
	}

	public void setStudent_id(Long student_id) {
		this.student_id = student_id;
	}

	public String getStudent_name() {
		return student_name;
	}

	public void setStudent_name(String student_name) {
		this.student_name = student_name;
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

	public Date getD_o_b() {
		return d_o_b;
	}

	public void setD_o_b(Date d_o_b) {
		this.d_o_b = d_o_b;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public Long getContact() {
		return contact;
	}

	public void setContact(Long contact) {
		this.contact = contact;
	}

	public byte[] getPhoto() {
		return photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
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

	public String getCurr_city() {
		return curr_city;
	}

	public void setCurr_city(String curr_city) {
		this.curr_city = curr_city;
	}

	public String getHome_city() {
		return home_city;
	}

	public void setHome_city(String home_city) {
		this.home_city = home_city;
	}

	public String getCurr_year() {
		return curr_year;
	}

	public void setCurr_year(String curr_year) {
		this.curr_year = curr_year;
	}

	public String getCurr_enroll_no() {
		return curr_enroll_no;
	}

	public void setCurr_enroll_no(String curr_enroll_no) {
		this.curr_enroll_no = curr_enroll_no;
	}

	public Date getValid_till() {
		return valid_till;
	}

	public void setValid_till(Date valid_till) {
		this.valid_till = valid_till;
	}

	public String getSkills() {
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}

	public String getInterest() {
		return interest;
	}

	public void setInterest(String interest) {
		this.interest = interest;
	}

	public String getHobbies() {
		return hobbies;
	}

	public void setHobbies(String hobbies) {
		this.hobbies = hobbies;
	}

	public String getAchievements() {
		return achievements;
	}

	public void setAchievements(String achievements) {
		this.achievements = achievements;
	}

	public String getRequest_status() {
		return request_status;
	}

	public void setRequest_status(String request_status) {
		this.request_status = request_status;
	}

	public String getDevice_id() {
		return device_id;
	}

	public void setDevice_id(String device_id) {
		this.device_id = device_id;
	}

	public StudentPast getStudentPast() {
		return studentPast;
	}

	public void setStudentPast(StudentPast studentPast) {
		this.studentPast = studentPast;
	}

	@Override
	public String toString() {
		return "Student [student_id=" + student_id + ", student_name=" + student_name + ", creation_date="
				+ creation_date + ", updation_date=" + updation_date + ", d_o_b=" + d_o_b + ", email_id=" + email_id
				+ ", contact=" + contact + ", photo=" + Arrays.toString(photo) + ", effective_date=" + effective_date
				+ ", expiration_date=" + expiration_date + ", curr_city=" + curr_city + ", home_city=" + home_city
				+ ", curr_year=" + curr_year + ", curr_enroll_no=" + curr_enroll_no + ", valid_till=" + valid_till
				+ ", skills=" + skills + ", interest=" + interest + ", hobbies=" + hobbies + ", achievements="
				+ achievements + ", request_status=" + request_status + ", device_id=" + device_id + ", studentPast="
				+ studentPast + "]";
	}
	
	
	
}
