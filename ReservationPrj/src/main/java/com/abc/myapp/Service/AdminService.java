package com.abc.myapp.Service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abc.myapp.Repository.AdminRepository;
import com.abc.myapp.model.AdminVO;
import com.abc.myapp.model.ReservationVO;

@Service
public class AdminService implements IAdminService {
	
	@Autowired
	AdminRepository adminrepository;
	
	
	@Override
	public boolean loginCheck(AdminVO admin) throws Exception {
		boolean result = adminrepository.loginCheck(admin);
//		//로그인 성공
//		if(result) {
//			session.setAttribute("admin_id", admin.getAdminId());
//	        session.setAttribute("admin_pw", admin.getAdminPw());
//	    }		
	    return result;
	}

	@Override
	public List<ReservationVO> getReservation(Date date, String time) {
		return adminrepository.getReservation(date, time);	
	}
}
