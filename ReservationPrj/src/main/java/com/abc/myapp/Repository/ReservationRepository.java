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
	
	// 인원수 가져올때 쓰는 매퍼
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
	
	// 
	private class ReservationMapper1 implements RowMapper<ReservationVO> {
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
	
	// 예약 추가 메서드
	@Override
	public void insertReservation(ReservationVO rev) {
		String sql = "insert into booking (name, phone, booking_date, booking_time, cnt, details,serial_number) values (?,?,?,?,?,?,id_seq.nextval)";
		jdbcTemplate.update(sql,rev.getName(), 
								rev.getPhone(),
								rev.getBookingDate(),
								rev.getBookingTime(),
								rev.getCnt(),
								rev.getDetails()
							);
	}
	
	// 핸드폰 번호로 예약 조회하기 메서드
	@Override
	public List<ReservationVO> getReservation(String phone) {
		String sql = "select name, phone, booking_date,booking_time,cnt,details,serial_number from booking where phone=? order by 3";
		return jdbcTemplate.query(sql,new ReservationMapper1(), phone);
	}

	@Override
	public void updateReservation(ReservationVO rev) {


	}

	// 날짜 선택후 해당 날짜의 시간별 예약 인원을 받아오는 메서드
	@Override
	public List<ReservationVO> getReservationCount(Date revDate) {
		String sql = "select booking_date, booking_time, sum(cnt) as cnt "
				+ "from booking where booking_date=? group by  booking_date, booking_time "
				+ "order by decode(booking_time, '런치1', 1, '런치2', 2, '디너1' ,3 , '디너2', 4)";
		return jdbcTemplate.query(sql, new ReservationMapper(), revDate);
	}
	
	// 예약 삭제 메서드
	@Override
	public void deleteReservation(int number, String phone) {
		String sql="delete booking where serial_number=? and phone=?";
		jdbcTemplate.update(sql,number,phone);
	}

	@Override
	public ReservationVO getReservationInfo(int number) {
		String sql = "select *from booking where serial_number=?";
		return jdbcTemplate.queryForObject(sql, new ReservationMapper1(),number);
	}
	
	// 예약 수정시 해당하는 예약의 인원수를 제외하고 예약인원을 받아오는 메서드
	@Override
	public List<ReservationVO> getUpdateReservationCount(Date updateDate, int targetNumber) {
		String sql = "select booking_date, booking_time, sum(cnt) as cnt from booking where booking_date= ? and serial_number != ? group by  booking_date, booking_time order by decode(booking_time, '런치1', 1, '런치2', 2, '디너1' ,3 , '디너2', 4)";
		return jdbcTemplate.query(sql, new ReservationMapper(), updateDate, targetNumber);
	}

	@Override
	public void updateReservation(ReservationVO rev, int targetNumber) {
		String sql = "update booking set name = ?, phone = ?, booking_date = ?, booking_time = ?, cnt = ?, details = ? where serial_number = ?";
		int serialNumber = targetNumber;
		jdbcTemplate.update(sql,rev.getName(), 
				rev.getPhone(),
				rev.getBookingDate(),
				rev.getBookingTime(),
				rev.getCnt(),
				rev.getDetails(),
				serialNumber
				);
	}
	
	




}