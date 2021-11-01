package com.abc.myapp.model;

import java.sql.Date;

public class ReservationVO {
	String name;
	String phone;
	Date bookingDate;
	int bookingTime;
	int cnt;
	String details;
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
	public int getBookingTime() {
		return bookingTime;
	}
	public void setBookingTime(int bookingTime) {
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
	public ReservationVO() {
		super();
	}
	@Override
	public String toString() {
		return "ReservationVO [name=" + name + ", phone=" + phone + ", bookingDate=" + bookingDate + ", bookingTime="
				+ bookingTime + ", cnt=" + cnt + ", details=" + details + "]";
	}
	
	
}
