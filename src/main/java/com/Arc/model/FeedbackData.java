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
@Table(name = "feedback_data")
public class FeedbackData {
	@Id
	@Column(name = "feedback_id")
	String feedback_id;
	
	String internship_id;
	private String feedback_for;
	private String feedback_from;
	private Date creation_date;
	private Date updation_date;
	private Date effective_date;
	private Date expiration_date;
	private String parameter_1;
	private String parameter_2;
	private String parameter_3;
	private String parameter_4;
	private String parameter_5;
	private String parameter_6;
	private String parameter_7;
	private String parameter_8;
	private String comments;
	private String overall;
	
	public String getFeedback_id() {
		return feedback_id;
	}
	public void setFeedback_id(String feedback_id) {
		this.feedback_id = feedback_id;
	}
	public String getInternship_id() {
		return internship_id;
	}
	public void setInternship_id(String internship_id) {
		this.internship_id = internship_id;
	}
	public String getFeedback_for() {
		return feedback_for;
	}
	public void setFeedback_for(String feedback_for) {
		this.feedback_for = feedback_for;
	}
	public String getFeedback_from() {
		return feedback_from;
	}
	public void setFeedback_from(String feedback_from) {
		this.feedback_from = feedback_from;
	}
	public Date getCreation_date() {
		return creation_date;
	}
	public void setCreation_date(Date date) {
		this.creation_date = date;
	}
	public Date getUpdation_date() {
		return updation_date;
	}
	public void setUpdation_date(Date updation_date) {
		this.updation_date = updation_date;
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
	public String getParameter_1() {
		return parameter_1;
	}
	public void setParameter_1(String parameter_1) {
		this.parameter_1 = parameter_1;
	}
	public String getParameter_2() {
		return parameter_2;
	}
	public void setParameter_2(String parameter_2) {
		this.parameter_2 = parameter_2;
	}
	public String getParameter_3() {
		return parameter_3;
	}
	public void setParameter_3(String parameter_3) {
		this.parameter_3 = parameter_3;
	}
	public String getParameter_4() {
		return parameter_4;
	}
	public void setParameter_4(String parameter_4) {
		this.parameter_4 = parameter_4;
	}
	public String getParameter_5() {
		return parameter_5;
	}
	public void setParameter_5(String parameter_5) {
		this.parameter_5 = parameter_5;
	}
	public String getParameter_6() {
		return parameter_6;
	}
	public void setParameter_6(String parameter_6) {
		this.parameter_6 = parameter_6;
	}
	public String getParameter_7() {
		return parameter_7;
	}
	public void setParameter_7(String parameter_7) {
		this.parameter_7 = parameter_7;
	}
	public String getParameter_8() {
		return parameter_8;
	}
	public void setParameter_8(String parameter_8) {
		this.parameter_8 = parameter_8;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getOverall() {
		return overall;
	}
	public void setOverall(String overall) {
		this.overall = overall;
	}
}
