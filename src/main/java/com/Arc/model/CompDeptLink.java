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
@Table(name = "comp_dept_link")
public class CompDeptLink {
	@Id
	@Column(name="comp_dept_link_id")
	private String comp_dept_link_id;
	private String company_id;
	private String dept_name;
	public String getDept_name() {
		return dept_name;
	}
	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}
	private Date creation_date;
	private Date updation_date;
	private String manager_id;
	private Date effective_date;
	public String getComp_dept_link_id() {
		return comp_dept_link_id;
	}
	public void setComp_dept_link_id(String comp_dept_link_id) {
		this.comp_dept_link_id = comp_dept_link_id;
	}
	public String getCompany_id() {
		return company_id;
	}
	public void setCompany_id(String company_id) {
		this.company_id = company_id;
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
	public String getManager_id() {
		return manager_id;
	}
	public void setManager_id(String manager_id) {
		this.manager_id = manager_id;
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
	public String getInternship_lead_id() {
		return internship_lead_id;
	}
	public void setInternship_lead_id(String internship_lead_id) {
		this.internship_lead_id = internship_lead_id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	private Date expiration_date;
	private String internship_lead_id;
	private String status;
	@Override
	public String toString() {
		return "CompDeptLink [comp_dept_link_id=" + comp_dept_link_id + ", company_id=" + company_id + ", dept_name="
				+ dept_name + ", creation_date=" + creation_date + ", updation_date=" + updation_date + ", manager_id="
				+ manager_id + ", effective_date=" + effective_date + ", expiration_date=" + expiration_date
				+ ", internship_lead_id=" + internship_lead_id + ", status=" + status + "]";
	}
	
}
