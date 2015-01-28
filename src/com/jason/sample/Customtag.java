package com.jason.sample;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class Customtag extends SimpleTagSupport {

	   private String message,value;

	   public void setMessage(String msg) {
	      this.message = msg;
	   }

	   public void setValue(String value) {
		this.value = value;
	}

	StringWriter sw = new StringWriter();

	   public void doTag()
	      throws JspException, IOException
	    {
	       if (message != null) {
	          /* Use message from attribute */
	          JspWriter out = getJspContext().getOut();
	          out.println( message );
	          if(value != null){
	        	   out = getJspContext().getOut();
		          out.println( value );
	          }
	       }
	       else {
	          /* use message from the body */
	          getJspBody().invoke(sw);
	          getJspContext().getOut().println(sw.toString());
	       }
	   }

	}
