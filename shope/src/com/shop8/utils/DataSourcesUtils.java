package com.shop8.utils;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class DataSourcesUtils {
	private static ComboPooledDataSource dataSource = new ComboPooledDataSource();
	public static DataSource getDataSources() {
		return dataSource;
	}
	public static Connection getConnection() throws SQLException {
		return dataSource.getConnection();
	}
	
	public static void close(Object ...objects) throws SQLException {
		for (Object object : objects) {
			if (object instanceof Statement) {
				((Statement)object).close();
			}else if(object instanceof Connection){
				((Connection)object).close();
			}
		}
	}
	
}
