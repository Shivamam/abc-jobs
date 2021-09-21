package com.lithan.module5;

import com.opensymphony.xwork2.ActionSupport;

public class AdminDeleteAction extends ActionSupport {

	private static final long serialVersionUID = 7789977831340637290L;
	UserPojo bean = new UserPojo();
	Admin bao = new Admin();
	
	public UserPojo getBean() {
		return bean;
	}
	public void setBean(UserPojo bean) {
		this.bean = bean;
	}
	
	@Override
	public String execute() throws Exception {
		System.out.println(bean.getEmail());
		int i = bao.deleteUserDetails(bean);
		try {
			if(i > 0) {
				System.out.println("user deleted");
			}else {
				System.out.println("user not deleted");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
}
