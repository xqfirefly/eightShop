package com.shop8.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop8.dao.NextClass;
import com.shop8.service.ProService;

/**
 * 展示次类商品
 */
public class ShowNext extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//通过dao获取商品的集合
		List<NextClass> productlist =null;
		//获取的参数是string类型的，需要强制转换
		int id = Integer.parseInt(request.getParameter("classid"));
		try {
			productlist = ProService.showNext(id);
			System.out.println(222);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//添加集合
		request.setAttribute("list", productlist);
		//请求转发
		request.getRequestDispatcher("/padmin/indexnext.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
