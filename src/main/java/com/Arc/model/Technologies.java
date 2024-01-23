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
@Table(name="technologies")
public class Technologies {
@Id
@Column(name="technology_name")

private String technology_name;


public String getTechnology_name() {
	return technology_name;
}

public void setTechnology_name(String technology_name) {
	this.technology_name = technology_name;
}

}
