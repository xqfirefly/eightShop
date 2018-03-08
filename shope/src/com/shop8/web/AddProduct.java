package com.shop8.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.shop8.domain.Product;
import com.shop8.service.ProService;
import com.shop8.utils.IDUtils;

/**
 * 添加商品
 */
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		Product product = new Product();
		try {
			//封装商品
			BeanUtils.populate(product, request.getParameterMap());
			/*if (product.getName()==null || product.getPrice()==0 || product.getSurplus_count()==0) {
				request.setAttribute("msg", "商品信息不能为空");
			}*/
			//添加id
			product.setId(IDUtils.getId());
			product.setSaled_count(0);
			//添加时间，后期添加
			product.setCdate(System.currentTimeMillis());
			//添加商品功能
			ProService.addProduct(product);
			//请求转发
			request.getRequestDispatcher("/showAll").forward(request, response);
		} catch (Exception e) {
			request.setAttribute("errormsg", "添加失败，请检查并重试");
			request.getRequestDispatcher("/padmin/indexerror.jsp").forward(request, response);
			e.printStackTrace();
		} 
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
