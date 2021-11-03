package com.abc.myapp.model;

import java.sql.Date;

public class ReservationVO {
	String name;
	String phone;
	Date bookingDate;
	String bookingTime;
	int cnt;
	String details;
	int serialNumber;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getBookingDate() {
		return bookingDate;
	}
	public void setBookingDate(Date bookingDate) {
		this.bookingDate = bookingDate;
	}
	public String getBookingTime() {
		return bookingTime;
	}
	public void setBookingTime(String bookingTime) {
		this.bookingTime = bookingTime;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public int getSerialNumber() {
		return serialNumber;
	}
	public void setSerialNumber(int serialNumber) {
		this.serialNumber = serialNumber;
	}
	@Override
	public String toString() {
		return "ReservationVO [name=" + name + ", phone=" + phone + ", bookingDate=" + bookingDate + ", bookingTime="
				+ bookingTime + ", cnt=" + cnt + ", details=" + details + ", serialNumber=" + serialNumber + "]";
	}
	
}
