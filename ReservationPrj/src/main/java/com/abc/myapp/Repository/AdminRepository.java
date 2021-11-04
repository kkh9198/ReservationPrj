package com.abc.myapp.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.abc.myapp.model.AdminVO;


@Repository
public class AdminRepository implements IAdminRepository {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	private class AdminMapper implements RowMapper<AdminVO> {
		@Override
		public AdminVO mapRow(ResultSet rs, int rowNum) throws SQLException {
			AdminVO admin = new AdminVO();
			admin.setAdminId(rs.getString("admin_id"));
//			admin.setAdminPw(rs.getString("admin_pw"));
			return admin;
		}
	}
	
	@Override
	public boolean loginCheck(AdminVO admin) throws Exception {
		String sql = "select admin_id from admin where admin_id = ? and admin_pw = ?";
		AdminVO name = jdbcTemplate.queryForObject(sql, new AdminMapper(), admin.getAdminId(), admin.getAdminPw());
		return (name==null) ? false : true;
	}

}
