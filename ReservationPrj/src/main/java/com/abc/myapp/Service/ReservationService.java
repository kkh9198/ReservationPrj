package com.abc.myapp.Service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abc.myapp.Repository.IReservationRepository;
import com.abc.myapp.model.ReservationVO;

@Service
public class ReservationService implements IReservationService {
	
	@Autowired
	IReservationRepository reservationrepository;
	
	@Override
	public void insertReservation(ReservationVO rev) {
		reservationrepository.insertReservation(rev); 
	}

	@Override
	public List<ReservationVO> getReservation(String phone) {
		return reservationrepository.getReservation(phone);
	}

	@Override
	public void updateReservation(ReservationVO rev) {
		reservationrepository.updateReservation(rev);	
	}

	@Override
	public List<ReservationVO> getReservationCount(Date revDate) {
		return reservationrepository.getReservationCount(revDate);
	}

	@Override
	public ReservationVO getReservationInfo(int number) {
		
		return reservationrepository.getReservationInfo(number);
	}

	@Override
	public void deleteReservation(int number, String phone) {
		reservationrepository.deleteReservation(number, phone);
		
	}

}
