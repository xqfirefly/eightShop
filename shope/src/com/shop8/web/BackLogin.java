package com.shop8.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop8.domain.Admin;
import com.shop8.service.AdmService;
import com.shop8.service.ProService;

/**
 * 登录后台
 */
public class BackLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String pwd = request.getParameter("password");
		boolean islogin = AdmService.login(new Admin(username,pwd));
		if (islogin) {
			try {
				int jurs = ProService.getJursByName(username);
				Cookie cookie = new Cookie("jurs", String.valueOf(jurs));
				Cookie cookie2 = new Cookie("uname", username);
				cookie.setPath("/shope/");
				cookie.setMaxAge(1800);
				response.addCookie(cookie);
				response.addCookie(cookie2);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			response.sendRedirect("/shope/padmin/backindex.jsp");
		}else {
			request.setAttribute("errormsg", "登录失败，请重试");
			request.getRequestDispatcher("/padmin/indexerror.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
