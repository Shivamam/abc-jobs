package com.lithan.module5;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class UserLogin extends ActionSupport implements SessionAware {

	private static final long serialVersionUID = 1L;
	private String email, password;
	private SessionMap<String, Object> sessionMap;
	
	public void setEmail(String Email)
	{
		this.email = Email;
	}

	public String getEmail()
	{
		return this.email;
	}
	
	public void setPassword(String Password)
	{
		this.password= Password;
	}
	
	public String getPassword()
	{
		return this.password;
	}
	
	public void setSession(Map<String, Object> map) {  
	    this.sessionMap=(SessionMap)map;  
	}  

	public String execute() throws SQLException, Exception
	{   
	
	if(email != null) {
		Admin bao = new Admin();
		boolean check = bao.loginCheck(email,password);
		
		
		if(check == true)
		{
			String  messages = "Login is successfull";
			
		   
		}
		else {
			String messages = "Please Enter Valid Username and Password";
			return "backLogin";
		}
		 sessionMap.put("login","true");  
		 sessionMap.put("Email",email);  
	}
	
	return "login";
	}
	
	public String logout(){  
	    if(sessionMap!=null){  
	        sessionMap.invalidate();  
	    }  
	    return "logout";  
	}  
   
}
