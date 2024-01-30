package com.Arc.model;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
 

 
import jakarta.persistence.Table;
import lombok.Data;
@Data
@Entity
@Table(name = "advertisements_comp")
public class CompAdvertisement {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String company_id;
	private String technology_name;
	private LocalDate creation_date;
	private LocalDate updation_date;
//	@JsonFormat(pattern=ProjectConstants.date_format)
	private LocalDate effective_date;
//	@JsonFormat(pattern=ProjectConstants.date_format)
	private LocalDate expiration_date;
	private String description;
	private Integer capacity;
	private Integer duration;
	private String status;
	private double stipend;
	
	private LocalDate start_date;
	private String adv_title;
	private String requirement;
	private String location;
	

	
	

}
