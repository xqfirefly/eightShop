package com.shop8.service;

import com.shop8.dao.AdmDao;
import com.shop8.domain.Admin;

public class AdmService {
	public static boolean login(Admin admin) {
		
		return new AdmDao().login(admin);
	}
}
