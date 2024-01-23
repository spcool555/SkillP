package com.Arc.model;

import java.util.Date;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "balance_data")
public class BalanceData {
	private String user_id;
	private int package_id;
	private Date creation_date;
	private Date updation_date;
	private Date payment_date;
	private Date effective_date;
	private Date expiration_date;
	private String payment_mode;
	private String transaction_id;
	@Id
	@Column(name = "balance_data_id")
	private String balance_data_id;
	private int no_of_dept;
	private int no_of_internships;

	public String getBalance_data_id() {
		return balance_data_id;
	}

	public void setBalance_data_id(String balance_data_id) {
		this.balance_data_id = balance_data_id;
	}

	public int getNo_of_dept() {
		return no_of_dept;
	}

	public void setNo_of_dept(int no_of_dept) {
		this.no_of_dept = no_of_dept;
	}

	public int getNo_of_internships() {
		return no_of_internships;
	}

	public void setNo_of_internships(int no_of_internships) {
		this.no_of_internships = no_of_internships;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getPackage_id() {
		return package_id;
	}

	public void setPackage_id(int package_id) {
		this.package_id = package_id;
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

	public Date getPayment_date() {
		return payment_date;
	}

	public void setPayment_date(Date payment_date) {
		this.payment_date = payment_date;
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

	public String getPayment_mode() {
		return payment_mode;
	}

	public void setPayment_mode(String payment_mode) {
		this.payment_mode = payment_mode;
	}

	public String getTransaction_id() {
		return transaction_id;
	}

	public void setTransaction_id(String transaction_id) {
		this.transaction_id = transaction_id;
	}
}
