package com.abc.myapp.Repository;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.abc.myapp.model.ReservationVO;


@Repository
public class ReservationRepository implements IReservationRepository {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	private class ReservationMapper implements RowMapper<ReservationVO> {
		@Override
		public ReservationVO mapRow(ResultSet rs, int rowNum) throws SQLException {
			ReservationVO rev = new ReservationVO();
//			rev.setName(rs.getString("name"));
//			rev.setPhone(rs.getString("phone"));
			rev.setBookingDate(rs.getDate("booking_date"));
			rev.setBookingTime(rs.getString("booking_time"));
			rev.setCnt(rs.getInt("cnt"));
//			rev.setDetails(rs.getString("details"));
			return rev;
		}			
	}
	
	@Override
	public void insertReservation(ReservationVO rev) {
		String sql = "insert into booking (name, phone, booking_date, booking_time, cnt, details) values (?,?,?,?,?,?)";
		jdbcTemplate.update(sql,rev.getName(), 
								rev.getPhone(),
								rev.getBookingDate(),
								rev.getBookingTime(),
								rev.getCnt(),
								rev.getDetails()
							);
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

	@Override
	public List<ReservationVO> getReservationCount(Date revDate) {
		String sql = "select booking_date, booking_time, sum(cnt) as cnt "
				+ "from booking where booking_date=? group by  booking_date, booking_time "
				+ "order by decode(booking_time, '런치1', 1, '런치2', 2, '디너1' ,3 , '디너2', 4)";
		return jdbcTemplate.query(sql, new ReservationMapper(), revDate);
	}



}
