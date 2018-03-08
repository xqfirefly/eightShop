package com.shop8.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop8.service.ProService;
import com.shop8.utils.CookUtils;

/**
 * 修改管理员密码
 */
public class ChangePass extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Cookie cookie = CookUtils.getCookieByName("uname", request.getCookies());
			String uname = cookie.getValue();
			String pas = request.getParameter("password");
			ProService.changePass(uname,pas);
		} catch (Exception e) {
			request.setAttribute("errormsg", "修改失败");
			request.getRequestDispatcher("/padmin/indexerror.jsp").forward(request, response);
			e.printStackTrace();
		}
		request.setAttribute("errormsg", "修改成功");
		request.getRequestDispatcher("/padmin/indexerror.jsp").forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
