package com.lithan.module5;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class UserUpdate extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String fname, lname, email, password, phone, gender ;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String execute() throws SQLException, Exception {
		HttpSession session = ServletActionContext.getRequest().getSession(false);

		if (session == null || session.getAttribute("login") == null) {
			return "Failure";

		}

		else {
			String email = (String) session.getAttribute("email");

			Admin bao = new Admin();
			int insert = bao.updateProfile(fname, lname, email, password, phone, gender);
			String msgs;
			if (insert > 0) {
				msgs = "Update Successfull";
				return "update";
			} else {
				msgs = "Some error";
			}
		}
		return "update";

	}

	public String updateJsp() {
		return "redirect";
	}
}
