package com.shop8.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.shop8.domain.Address;
import com.shop8.domain.Admin;
import com.shop8.domain.OrderDetail;
import com.shop8.domain.Product;
import com.shop8.domain.User;
import com.shop8.utils.DataSourcesUtils;

public class ProDao {
	
	/**
	 * 查询所有商品
	 * @return 商品集合
	 * @throws SQLException
	 */
	public  List<Product> findAll() throws SQLException{
		String sql = "select * from product_list";
		QueryRunner qRunner = new QueryRunner(DataSourcesUtils.getDataSources());
		return qRunner.query(sql,new BeanListHandler<>(Product.class));
	}
	/**
	 * 插入
	 * @param product 接收商品对象
	 * @throws SQLException
	 */
	public void addProduct(Product product) throws SQLException {
		String sql = "insert into product_list values(?,?,?,?,?,?,?,?)";
		String id = product.getId();
		String name = product.getName();
		int class_id = product.getClass_id();
		double price = product.getPrice();
		int surplus = product.getSurplus_count();
		int saled = product.getSaled_count();
		String detail = product.getDetail();
		long cdate = product.getCdate();
		
		QueryRunner qRunner = new QueryRunner(DataSourcesUtils.getDataSources());
		qRunner.update(sql, id,name,class_id,price,surplus,saled,detail,cdate);
		
	}
	/**
	 * 查询主类商品
	 * @return 主类集合
	 * @throws SQLException
	 */
	public List<MainClass> showMain() throws SQLException {
		String sql = "select * from main_class";
		QueryRunner qRunner = new QueryRunner(DataSourcesUtils.getDataSources());
		return qRunner.query(sql,new BeanListHandler<>(MainClass.class));
	}
	/**
	 * 查询次类商品 并封装
	 * @return 次类集合
	 * @throws SQLException
	 */
	public List<NextClass> showNext(int classid) throws SQLException {
		String sql = "select * from next_class where main_id = ?";
		QueryRunner qRunner = new QueryRunner(DataSourcesUtils.getDataSources());
		return qRunner.query(sql,new BeanListHandler<>(NextClass.class),classid);
	}
	/**
	 * 根据id获取一个商品对象
	 * @param id
	 * @return 该id的商品对象
	 * @throws SQLException
	 */
	public Product getProByID(String id) throws SQLException {
		String sql = "select * from product_list where id=?";
		QueryRunner qRunner = new QueryRunner(DataSourcesUtils.getDataSources());
		return qRunner.query(sql,new BeanHandler<>(Product.class),id);
	}
	/**
	 * 根据id修改商品信息
	 * @param product
	 * @throws SQLException 
	 */
	public void updateProByID(Product product) throws SQLException {
		String sql = "update product_list set name=?,class_id=?,price=?,surplus_count=?,detail=?,cdate=? where id = ?";
		QueryRunner qRunner = new QueryRunner(DataSourcesUtils.getDataSources());
		qRunner.update(sql,product.getName(),product.getClass_id(),product.getPrice(),product.getSurplus_count(),product.getDetail(),System.currentTimeMillis(),product.getId());
		
	}
	/**
	 * 删除商品
	 * @param id
	 * @throws SQLException
	 */
	public void deletePro(String id) throws SQLException {
		String sql = "delete from product_list where id = ?";
		QueryRunner qRunner = new QueryRunner(DataSourcesUtils.getDataSources());
		qRunner.update(sql,id);
		
	}
	/**
	 * 获取权限值
	 * @param username
	 * @return
	 * @throws SQLException
	 */
	public int getJursByName(String username) throws SQLException {
		String sql = "select * from administrators where user_name=?";
		QueryRunner qRunner = new QueryRunner(DataSourcesUtils.getDataSources());
		Admin admin = qRunner.query(sql, new BeanHandler<>(Admin.class),username);
		return admin.getJursdiction();
	}
	/**
	 * 显示订单
	 * @return
	 * @throws SQLException 
	 */
	public List<OrderList> findOrder() throws SQLException {
		String sql = "select * from orderlist";
		QueryRunner qRunner = new QueryRunner(DataSourcesUtils.getDataSources());
		return qRunner.query(sql,new BeanListHandler<>(OrderList.class));
	}
	/**
	 * 获取订单细节
	 * @param id
	 * @return
	 * @throws SQLException 
	 */
	public OrderDetail getDetailByID(String id) throws SQLException {
		String sql = "select * from orderlist where id = ?";
		QueryRunner qRunner = new QueryRunner(DataSourcesUtils.getDataSources());
		OrderDetail orderDetail = new OrderDetail();
		OrderList orderList =  qRunner.query(sql,new BeanHandler<>(OrderList.class),id);
		String addsql = "select * from address where user_id = ?";
		Address address = qRunner.query(addsql,new BeanHandler<>(Address.class),orderList.getUser_id());
		String namesql = "select * from user where id = ?";
		User user = qRunner.query(namesql,new BeanHandler<>(User.class),orderList.getUser_id());
		orderDetail.setAddress(address);
		orderDetail.setOrderList(orderList);
		orderDetail.setUsername(user.getUsername());
		return orderDetail;
	}
	/**
	 * 显示所有的user信息
	 * @throws SQLException 
	 */
	public List<User> findUser() throws SQLException {
		String sql = "select * from user";
		QueryRunner qRunner = new QueryRunner(DataSourcesUtils.getDataSources());
		return qRunner.query(sql,new BeanListHandler<>(User.class));
		
	}
	public List<Product> findProductByCondition(String name, String kw) throws SQLException {
		QueryRunner qr = new QueryRunner(DataSourcesUtils.getDataSources());
		String sql="select  * from product_list where 1=1 ";
		
		//存放参数
		ArrayList<String> params=new ArrayList<>();
		
		//判断参数是否为空 拼接sql
		if(name!=null && name.trim().length()>0){
			sql+=(" and name like ? ");// pname like "%ssss%"
			params.add("%"+name+"%");
		}
		
		if(kw!=null && kw.trim().length()>0){
			sql+=(" and detail like ? ");// pname like "%ssss%"
			params.add("%"+kw+"%");
		}
		return qr.query(sql, new BeanListHandler<>(Product.class), params.toArray());
	}
	public void deleteProductById(String pid) throws SQLException {
		QueryRunner qr = new QueryRunner(DataSourcesUtils.getDataSources());
		String sql="delete from product_list where id = ?";
		qr.update(sql, pid);
		
	}
}
