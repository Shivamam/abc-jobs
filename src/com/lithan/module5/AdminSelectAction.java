package com.lithan.module5;

import java.sql.ResultSet;
import java.util.ArrayList;

import org.apache.struts2.ServletActionContext;

public class AdminSelectAction {

	ResultSet rs = null;
	UserPojo bean = null;
	private boolean noData = false;
	ArrayList<UserPojo> beanList = null;
	Admin admin = new Admin();
	
	public ArrayList<UserPojo> getBeanList() {
		return beanList;
	}

	public void setBeanList(ArrayList<UserPojo> beanList) {
		this.beanList = beanList;
	}

	public String execute() throws Exception {
		
		rs = admin.viewUsers();
		int i = 0;
		beanList = new ArrayList<UserPojo>();
		if (rs != null) {
			while (rs.next()) {
				i++;
				bean = new UserPojo();
				bean.setFname(rs.getString("fname"));
				bean.setLname(rs.getString("lname"));
				bean.setEmail(rs.getString("email"));
				bean.setPassword(rs.getString("password"));
				bean.setPhone(rs.getString("phone"));
				bean.setGender(rs.getString("gender"));
				beanList.add(bean);
			}

			if (i == 0) {
				setNoData(false);
			} else {
				setNoData(true);
			}
		}
		return "success";
	}

	public boolean isNoData() {
		return noData;
	}

	public void setNoData(boolean noData) {
		this.noData = noData;
	}

}
