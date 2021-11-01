package com.abc.myapp.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.abc.myapp.model.ReservationVO;

@Repository
public class ReservationRepository implements IReservationRepository {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	private class ReservationMapper implements RowMapper<ReservationVO> {
		@Override
		public ReservationVO mapRow(ResultSet rs, int rowNum) throws SQLException {
			ReservationVO rev = new ReservationVO();
			rev.setName(rs.getString("name"));
			rev.setPhone(rs.getString("phone"));
			rev.setBookingDate(rs.getDate("booking_date"));
			rev.setBookingTime(rs.getInt("booking_time"));
			rev.setCnt(rs.getInt("cnt"));
			rev.setDetails(rs.getString("details"));
			return rev;
		}			
	}
	
	
	@Override
	public void insertReservation(ReservationVO rev) {
//		String sql = ""

	}

	@Override
	public int getReservation(String phone) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void updateReservation(ReservationVO rev) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteReservation(ReservationVO rev) {
		// TODO Auto-generated method stub

	}

}
