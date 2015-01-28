package com.jason.sample;

import java.io.IOException;
import java.io.StringWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class Yash extends SimpleTagSupport{
	
	StringWriter sw = new StringWriter();
	
	public void doTag() throws IOException, JspException{
		
		JspWriter y = getJspContext().getOut();
		y.println("This is Bangaram Yashoon");
		
		getJspBody().invoke(sw);
		
		getJspContext().getOut().print(sw);
	}
	
}
