package com.abc.myapp.Repository;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.abc.myapp.model.AdminVO;
import com.abc.myapp.model.ReservationVO;


@Repository
public class AdminRepository implements IAdminRepository {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	// 관리자 로그인 관련 매퍼
	private class AdminMapper implements RowMapper<AdminVO> {
		@Override
		public AdminVO mapRow(ResultSet rs, int rowNum) throws SQLException {
			AdminVO admin = new AdminVO();
			admin.setAdminId(rs.getString("admin_id"));
//			admin.setAdminPw(rs.getString("admin_pw"));
			return admin;
		}
	}
	
	// 예약 정보를 모두 불러올때 사용할 매퍼?
	private class ReservationMapper implements RowMapper<ReservationVO> {
		@Override
		public ReservationVO mapRow(ResultSet rs, int rowNum) throws SQLException {
			ReservationVO rev = new ReservationVO();
			rev.setName(rs.getString("name"));
			rev.setPhone(rs.getString("phone"));
			rev.setBookingDate(rs.getDate("booking_date"));
			rev.setBookingTime(rs.getString("booking_time"));
			rev.setCnt(rs.getInt("cnt"));
			rev.setDetails(rs.getString("details"));
			rev.setSerialNumber(rs.getInt("serial_number"));
			return rev;
		}			
	}
	
	@Override
	public boolean loginCheck(AdminVO admin) throws Exception {
		String sql = "select admin_id from admin where admin_id = ? and admin_pw = ?";
		AdminVO name = jdbcTemplate.queryForObject(sql, new AdminMapper(), admin.getAdminId(), admin.getAdminPw());
		return (name==null) ? false : true;
	}

	@Override
	public List<ReservationVO> getReservation(Date date, String time) {
		String sql = "select name, phone, booking_date,booking_time,cnt,details,serial_number from booking where booking_date=? and booking_time=?";
		return jdbcTemplate.query(sql,new ReservationMapper(), date, time);
	}

}
