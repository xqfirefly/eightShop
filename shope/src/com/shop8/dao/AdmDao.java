package com.shop8.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.shop8.domain.Admin;
import com.shop8.utils.DataSourcesUtils;

public class AdmDao {
	/**
	 * 对比用户名和密码
	 * @param admin
	 * @return
	 * @throws SQLException 
	 */
	public boolean login(Admin admin){
		String sql = "select * from administrators where user_name =?";
		QueryRunner queryRunner = new QueryRunner(DataSourcesUtils.getDataSources());
		try {
			Admin qurAdimn = queryRunner.query(sql, new BeanHandler<>(Admin.class),admin.getUser_name());
			if (qurAdimn!=null) {
				if (admin.getPassword().equals(qurAdimn.getPassword())) {
					return true;
				}else {
					return false;
				}
			}else {
				return false;
			}
		} catch (SQLException e) {
			
			return false;
		}
	}
	/**
	 * 修改管理员密码
	 * @param uname
	 * @throws SQLException 
	 */
	public void changePass(String uname,String pas) throws SQLException {
		String sql = "update administrators set password =? where user_name =?;";
		QueryRunner queryRunner = new QueryRunner(DataSourcesUtils.getDataSources());
		queryRunner.update(sql,pas,uname);
	}
}
