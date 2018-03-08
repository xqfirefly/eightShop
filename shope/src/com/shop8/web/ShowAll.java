package com.shop8.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop8.domain.Product;
import com.shop8.service.ProService;

/**
 * 展示所有商品
 */
public class ShowAll extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//通过dao获取商品的集合
		List<Product> productlist =null;
		try {
			productlist = ProService.findAll();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//添加集合
		request.setAttribute("list", productlist);
		//请求转发
		request.getRequestDispatcher("/padmin/indexproduct.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
