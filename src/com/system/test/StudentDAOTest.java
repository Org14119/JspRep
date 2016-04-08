package com.system.test;

import java.sql.Connection;
import java.sql.SQLException;

import com.system.daoImpl.StudentDaoImpl;
import com.system.entity.Student;
import com.system.util.ConnectionFactory;

public class StudentDAOTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Student s=new Student();
		s.setEmail("Doubi@sina.com");
		s.setGender("0");
		s.setName("逗逼");
		s.setPassword("123456");
		Connection conn = ConnectionFactory.getInstace().makeConnection();
		StudentDaoImpl sdi=new StudentDaoImpl();
		try {
			sdi.insert(conn, s);
			//sdi.delete(conn, s);
			sdi.update(conn, s);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
