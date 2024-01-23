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
@Table(name = "internships")
public class Internships {
	@Id
	@Column(name = "internship_id")
	private String internship_id;
	private Integer coll_dept;
	private String comp_dept_id;
	private String group_id;
	private String reason;

	public String getGroup_id() {
		return group_id;
	}
	public void setGroup_id(String group_id) {
		this.group_id = group_id;
	}

	/*@JsonIgnore
	@OneToMany(cascade = CascadeType.ALL,mappedBy="internships")
	private List<InternshipSchedule> internshipSchedule;
	public List<InternshipSchedule> getInternshipSchedule() {
		return internshipSchedule;
	}
	public void setInternshipSchedule(List<InternshipSchedule> internshipSchedule) {
		this.internshipSchedule = internshipSchedule;
	}*/
	
	public Integer getColl_dept() {
		return coll_dept;
	}
	
	public void setColl_dept(Integer coll_dept) {
		this.coll_dept = coll_dept;
	}

	public String getComp_dept_id() {
		return comp_dept_id;
	}

	public void setComp_dept_id(String comp_dept_id) {
		this.comp_dept_id = comp_dept_id;
	}

	public String getInternship_id() {
		return internship_id;
	}

	public void setInternship_id(String internship_id) {
		this.internship_id = internship_id;
	}

	public String getStudent_id() {
		return student_id;
	}

	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}

	public String getTechnology() {
		return technology;
	}

	public void setTechnology(String technology) {
		this.technology = technology;
	}

	public String getCollege_id() {
		return college_id;
	}

	public void setCollege_id(String college_id) {
		this.college_id = college_id;
	}

	public String getCompany_id() {
		return company_id;
	}

	public void setCompany_id(String company_id) {
		this.company_id = company_id;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
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

	public Date getDate_started() {
		return date_started;
	}

	public void setDate_started(Date date_started) {
		this.date_started = date_started;
	}

	public Date getDate_completed() {
		return date_completed;
	}

	public void setDate_completed(Date date_completed) {
		this.date_completed = date_completed;
	}

	private String student_id;
	private String technology;
	private String college_id;
	private String company_id;
	private int duration;
	private Date creation_date;
	private Date updation_date;
	private Date date_started;
	private Date date_completed;
	private String advertisement_id;
	private String status;
	private String against_int_req_id;
	

	public String getAgainst_int_req_id() {
		return against_int_req_id;
	}
	public void setAgainst_int_req_id(String against_int_req_id) {
		this.against_int_req_id = against_int_req_id;
	}
	public String getAdvertisement_id() {
		return advertisement_id;
	}

	public void setAdvertisement_id(String advertisement_id) {
		this.advertisement_id = advertisement_id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}

}
