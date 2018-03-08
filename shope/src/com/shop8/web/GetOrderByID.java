package com.shop8.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop8.domain.OrderDetail;
import com.shop8.service.ProService;

/**
 * 通过id获取订单信息
 */
public class GetOrderByID extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		OrderDetail orderDetail = null;
		try {
			orderDetail=ProService.getDetailByID(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("bean", orderDetail);
		request.getRequestDispatcher("/padmin/orderDetail.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
