package com.driving.models;

import java.time.LocalDate;

public class SeanceCode {

	private String lieu;
	private LocalDate date;

	public SeanceCode(String lieu, LocalDate date) {
		super();
		this.lieu = lieu;
		this.date = date;
	}

	public String getLieu() {
		return this.lieu;
	}

	public void setLieu(String lieu) {
		this.lieu = lieu;
	}

	public LocalDate getDate() {
		return this.date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}




}
