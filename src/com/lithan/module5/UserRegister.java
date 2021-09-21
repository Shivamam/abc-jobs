	package com.lithan.module5;
 import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.opensymphony.xwork2.ActionSupport;

public class UserRegister extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String fname,lname,email,password,dob,phone,gender;
	private String msg = "";
	Admin admin = null;
	int ctr = 0;

	
		
	
	@Override
	public String execute() throws Exception {
		
		admin = new Admin();
		
		String to = getEmail();
	       Properties properties = new Properties();
	       properties.put("mail.smtp.host", "smtp.gmail.com");
	       properties.put("mail.smtp.socketFactory.port", "465");
	       properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	       properties.put("mail.smtp.auth", "true");
	       properties.put("mail.smtp.port", "465");

	       Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
	           protected PasswordAuthentication getPasswordAuthentication() {
	               return new PasswordAuthentication("Abcjobs.pvt@gmail.com", "Lithan2020");
	           }
	       });
	       try {
	           MimeMessage message = new MimeMessage(session);
	           message.setFrom(new InternetAddress("Abcjobs.pvt@gmail.com"));
	           message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
	           message.setSubject("Abc Jobs Pvt");
	           message.setText("Welcome to Abc jobs pvt, you have successfully Registered and Good to Go...!!");
	           Transport.send(message);
	           System.out.println("message sent to " + getEmail());
	       }catch (MessagingException e) {
	           throw new RuntimeException(e);
	       }
		try {
			ctr = admin.registerUser(fname, lname, email, password, phone, gender);
			if (ctr > 0) {
				msg = "Registration Successfull";
			} else {
				msg = "Some error";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "register";
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	public int getCtr() {
		return ctr;
	}

	public void setCtr(int ctr) {
		this.ctr = ctr;
	}

}