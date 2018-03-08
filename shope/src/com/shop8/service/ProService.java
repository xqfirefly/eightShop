package com.shop8.service;

import java.sql.SQLException;
import java.util.List;

import com.shop8.dao.AdmDao;
import com.shop8.dao.MainClass;
import com.shop8.dao.NextClass;
import com.shop8.dao.OrderList;
import com.shop8.dao.ProDao;
import com.shop8.domain.OrderDetail;
import com.shop8.domain.Product;
import com.shop8.domain.User;

public class ProService {
	public static List<Product> findAll() throws SQLException{
		return new ProDao().findAll();
	}

	public static void addProduct(Product product) throws SQLException {
		new ProDao().addProduct(product);
	}

	public static List<MainClass> showMain() throws SQLException {
		// TODO Auto-generated method stub
		return new ProDao().showMain();
	}

	public static List<NextClass> showNext(int classid) throws SQLException {
		// TODO Auto-generated method stub
		return new ProDao().showNext(classid);
	}

	public static Product getProByID(String id) throws SQLException {
		return new ProDao().getProByID(id);
	}

	public static void updateProByID(Product product) throws SQLException {
		new ProDao().updateProByID(product);
	}

	public static void deletePro(String id) throws SQLException {
		new ProDao().deletePro(id);
		
	}

	public static int getJursByName(String username) throws SQLException {
		return new ProDao().getJursByName(username);
		
	}

	public static List<OrderList> findOrder() throws SQLException {
		
		return new ProDao().findOrder();
	}


	public static OrderDetail getDetailByID(String id) throws SQLException {
		return new ProDao().getDetailByID(id);
	}

	public static List<User> findUser() throws SQLException {
		// TODO Auto-generated method stub
		return new ProDao().findUser();
	}

	public static void changePass(String uname,String pas) throws SQLException {
		// TODO Auto-generated method stub
		new AdmDao().changePass(uname,pas);
	}

	public static List<Product> findProductByCondition(String name, String kw) throws SQLException {
		// TODO Auto-generated method stub
		return new ProDao().findProductByCondition(name, kw);
	}

	public void deleteManyProdcut(String[] ids) throws SQLException {
		ProDao pDao = new ProDao();
		for (String pid:ids) {
			pDao.deleteProductById(pid);
		}
		
	}
}
