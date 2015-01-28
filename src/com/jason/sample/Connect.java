package com.jason.sample;

import java.io.IOException;
import java.sql.*;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;


public class Connect extends SimpleTagSupport{
	Connection con = null;
	
	
		 public void doTag() throws JspException, IOException {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/samp","root","root");
			  JspWriter out = getJspContext().getOut();
			out.println("hai this is connection");
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	
		
	}

}
