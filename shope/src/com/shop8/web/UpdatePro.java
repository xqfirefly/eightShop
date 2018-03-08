package com.shop8.web;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.shop8.domain.Product;
import com.shop8.service.ProService;

/**
 * 修改商品信息根据id
 */
public class UpdatePro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		Product product =new Product();
		try {
			BeanUtils.populate(product, request.getParameterMap());
			ProService.updateProByID(product);
			response.sendRedirect("/shope/showAll");
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
