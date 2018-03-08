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
 * 多条件查询
 */
public class FindProByCondition extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0.设置编码
		request.setCharacterEncoding("utf-8");
		
		//1.接受两个参数
		String name=request.getParameter("name");
		String kw=request.getParameter("kw");
		
		//2.调用service 完成操作  返回值:list
		List<Product> plist=null;
		try {
			plist =ProService.findProductByCondition(name,kw);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//3.将list放入request域中,请求转发
		request.setAttribute("list", plist);
		request.getRequestDispatcher("/padmin/indexproduct.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

