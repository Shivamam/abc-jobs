package com.lithan.module5;

import com.opensymphony.xwork2.ActionSupport;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
public class UserSearch extends ActionSupport  {
	
	

	
	private static final long serialVersionUID = -6750168050684601868L;
	private String Search;
	
	ResultSet rs = null;
	ResultSet rsss = null;
	UserPojo bean = null;
	UserPojo beans = null;
	ArrayList<UserPojo> beanList = null;
	ArrayList<UserPojo> beanl = null;
	Admin admins = new Admin();
	private boolean noData = false;
	private String email;
	
	public void setEmail(String email)
	{
		this.email = email;
	}
	
	public String getEmail()
	{
		return email;
	}
	
	public String search() throws Exception
	{
		
		beanList = new ArrayList<UserPojo>();
		if(Search == "") {
			addActionMessage("Search Field is Mandatory");
			return "error";
		}
		else {
    	rs = admins.userList(Search);
    	System.out.println(Search);
    	int i = 0;
    	
    	while (rs.next()) {
    	i++;
    	bean = new UserPojo();
    	bean.setFname(rs.getString("fname"));
    	bean.setLname(rs.getString("lname"));
    	bean.setEmail(rs.getString("email"));
    	beanList.add(bean);
    	}
    	
    	
    	
    	if (i == 0) {
    	noData = false;
    	
    	
    	
    	} else {
    	noData = true;
    	}
		}
    	
        return "success";  
	}
	
	public String fullprofile() throws SQLException, Exception
	{
	
		beanl = new ArrayList<UserPojo>();
		
		System.out.println(email);
		rsss = admins.userSearch(email);
		
		int i = 0;
    	
    	if (rsss != null) {
    	while (rsss.next()) {
    	i++;
    	System.out.println(i);
    	beans = new UserPojo();
    	beans.setFname(rsss.getString("fname"));
    	beans.setLname(rsss.getString("lname"));
    	beans.setGender(rsss.getString("gender"));
    	beans.setEmail(rsss.getString("email"));
    	beanl.add(beans);
    	}
    	}
    	
    	System.out.println(i);
    	if (i == 0) {
    	noData = false;
    	} else {
    	noData = true;
    	}
    	
    	
        return "REPORTS";  
		
		
	}
	
	public void setSearch(String Search)
	{
		this.Search = Search;
	}
	
	public String getSearch()
	{
		return Search;
	}
	
	public boolean isNoData() {
		return noData;
		}
	
	public void setNoData(boolean noData) {
		this.noData = noData;
		}

	public UserPojo getBean() {
		return bean;
	}

	public void setBean(UserPojo bean) {
		this.bean = bean;
	}

	public UserPojo getBeans() {
		return beans;
	}

	public void setBeans(UserPojo beans) {
		this.beans = beans;
	}

	public ArrayList<UserPojo> getBeanList() {
		return beanList;
	}

	public void setBeanList(ArrayList<UserPojo> beanList) {
		this.beanList = beanList;
	}

	public ArrayList<UserPojo> getBeanl() {
		return beanl;
	}

	public void setBeanl(ArrayList<UserPojo> beanl) {
		this.beanl = beanl;
	}
	


}
