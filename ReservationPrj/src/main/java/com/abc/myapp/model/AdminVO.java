package com.abc.myapp.model;

public class AdminVO {
	private String adminId;
	private String adminPw;
	
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getAdminPw() {
		return adminPw;
	}
	public void setAdminPw(String adminPw) {
		this.adminPw = adminPw;
	}
	public AdminVO() {
		super();
	}
	
	@Override
	public String toString() {
		return "adminVO [adminId=" + adminId + ", adminPw=" + adminPw + "]";
	}
	
	
}
