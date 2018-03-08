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
 * 删除商品
 */
public class DeletePro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Cookie jursCookie = CookUtils.getCookieByName("jurs", request.getCookies());
			int jurs = Integer.parseInt(jursCookie.getValue());
			if (jurs<3) {
				request.setAttribute("errormsg", "权限不足，无法操作");
				request.getRequestDispatcher("/padmin/indexerror.jsp").forward(request, response);
			}else {
				String id = request.getParameter("id");
				try {
					ProService.deletePro(id);
				} catch (SQLException e) {
					e.printStackTrace();
				}
				response.sendRedirect("/shope/showAll");
			}
		} catch (Exception e) {
			request.setAttribute("errormsg", "登录超时，请重新登录");
			request.getRequestDispatcher("/padmin/indexerror.jsp").forward(request, response);
		}
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
