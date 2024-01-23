package com.Arc.model;


import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "assessment_test")
public class AssessmentTest {

	@Id
	@Column(name="test_id")
	public String test_id;
	public String test_name;
	public String user_id;
	public int total_mark;
	public int total_que;
	public int time;
	public int cut_off;
	public int mark_per_que;
	public String status;
	public Date from_date;
	public Date to_date;
	public Date creation_date;
	public Date updation_date;
	public Date expiration_date;
	public String getTest_id() {
		return test_id;
	}
	public void setTest_id(String test_id) {
		this.test_id = test_id;
	}
	public String getTest_name() {
		return test_name;
	}
	public void setTest_name(String test_name) {
		this.test_name = test_name;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getTotal_mark() {
		return total_mark;
	}
	public void setTotal_mark(int total_mark) {
		this.total_mark = total_mark;
	}
	public int getTotal_que() {
		return total_que;
	}
	public void setTotal_que(int total_que) {
		this.total_que = total_que;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	public int getCut_off() {
		return cut_off;
	}
	public void setCut_off(int cut_off) {
		this.cut_off = cut_off;
	}
	public int getMark_per_que() {
		return mark_per_que;
	}
	public void setMark_per_que(int mark_per_que) {
		this.mark_per_que = mark_per_que;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getFrom_date() {
		return from_date;
	}
	public void setFrom_date(Date from_date) {
		this.from_date = from_date;
	}
	public Date getTo_date() {
		return to_date;
	}
	public void setTo_date(Date to_date) {
		this.to_date = to_date;
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
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("AssessmentTest [test_id=");
		builder.append(test_id);
		builder.append(", test_name=");
		builder.append(test_name);
		builder.append(", user_id=");
		builder.append(user_id);
		builder.append(", total_mark=");
		builder.append(total_mark);
		builder.append(", total_que=");
		builder.append(total_que);
		builder.append(", time=");
		builder.append(time);
		builder.append(", cut_off=");
		builder.append(cut_off);
		builder.append(", mark_per_que=");
		builder.append(mark_per_que);
		builder.append(", status=");
		builder.append(status);
		builder.append(", from_date=");
		builder.append(from_date);
		builder.append(", to_date=");
		builder.append(to_date);
		builder.append(", creation_date=");
		builder.append(creation_date);
		builder.append(", updation_date=");
		builder.append(updation_date);
		builder.append(", expiration_date=");
		builder.append(expiration_date);
		builder.append("]");
		return builder.toString();
	}
}
