package com.lithan.module5;

import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class UserView extends ActionSupport {

	private static final long serialVersionUID = 1L;

	ResultSet rs = null;
	UserPojo bean = null;
	ArrayList<UserPojo> beanList = null;
	Admin admin = new Admin();
	private boolean noData = false;

	@Override
	public String execute() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession(false);
		if (session == null || session.getAttribute("login") == null) {
			return "Failure";

		} else {
			String Email = (String) session.getAttribute("Email");

			beanList = new ArrayList<UserPojo>();
			rs = admin.report(Email);
			int i = 0;
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
			}
			if (i == 0) {
				noData = false;
			} else {
				noData = true;
			}
			return "REPORT";
		}

	}

	public boolean isNoData() {
		return noData;
	}

	public void setNoData(boolean noData) {
		this.noData = noData;
	}

	public ArrayList<UserPojo> getBeanList() {
		return beanList;
	}

	public void setBeanList(ArrayList<UserPojo> beanList) {
		this.beanList = beanList;
	}
}