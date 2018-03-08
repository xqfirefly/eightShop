package com.shop8.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop8.domain.Product;
import com.shop8.service.ProService;

/**
 * 通过id获取一个pro对象
 */
public class GetProByID extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Product product = null;
		try {
			product=ProService.getProByID(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("bean", product);
		request.getRequestDispatcher("/padmin/editPro.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
