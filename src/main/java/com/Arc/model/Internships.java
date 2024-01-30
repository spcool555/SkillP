package com.Arc.model;

import java.time.LocalDate;
import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

import jakarta.persistence.Table;
import lombok.Data;
@Entity
@Data
@Table(name = "internships2")
public class Internships {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "internship_id")
	private Long internship_id;
	private Integer coll_dept;
	private String comp_dept_id;
	private String group_id;
	private String reason;
	private Long student_id;
	private String technology;
	private String college_id;
	private String company_id;
	private int duration;
	private LocalDate creation_date;
	private LocalDate updation_date;
	private LocalDate date_started;
	private LocalDate date_completed;
	private String advertisement_id;
	private String status;
	private String against_int_req_id;
	private short type;
	

}
