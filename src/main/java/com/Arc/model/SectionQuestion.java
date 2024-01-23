package com.Arc.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

import jakarta.persistence.Table;

@Entity
@Table(name="section_ques")
public class SectionQuestion {

	@Id
	@Column(name="question_id")
	private String question_id;
	private String section_id;
	private String question;
	private String ques_type;
	private int ques_time;
	private int mark_per_ques;
	private String option_a;
	private String option_b;
	private String option_c;
	private String option_d;
	private String ans;
	
	
	public String getQuestion_id() {
		return question_id;
	}
	public void setQuestion_id(String question_id) {
		this.question_id = question_id;
	}
	public String getSection_id() {
		return section_id;
	}
	public void setSection_id(String section_id) {
		this.section_id = section_id;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getType() {
		return ques_type;
	}
	public void setType(String type) {
		this.ques_type = type;
	}
	public int getQues_time() {
		return ques_time;
	}
	public void setQues_time(int ques_time) {
		this.ques_time = ques_time;
	}
	public int getMark_per_ques() {
		return mark_per_ques;
	}
	public void setMark_per_ques(int mark_per_ques) {
		this.mark_per_ques = mark_per_ques;
	}
	public String getOption_a() {
		return option_a;
	}
	public void setOption_a(String option_a) {
		this.option_a = option_a;
	}
	public String getOption_b() {
		return option_b;
	}
	public void setOption_b(String option_b) {
		this.option_b = option_b;
	}
	public String getOption_c() {
		return option_c;
	}
	public void setOption_c(String option_c) {
		this.option_c = option_c;
	}
	public String getOption_d() {
		return option_d;
	}
	public void setOption_d(String option_d) {
		this.option_d = option_d;
	}
	public String getAns() {
		return ans;
	}
	public void setAns(String ans) {
		this.ans = ans;
	}
	
	
}
