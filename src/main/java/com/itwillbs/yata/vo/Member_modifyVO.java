package com.itwillbs.yata.vo;

public class Member_modifyVO {
	private String new_passwd;
	private String new_phone;
	private String member_email;
	public Member_modifyVO() {
	}
	
	public Member_modifyVO(String new_passwd, String new_phone, String member_email) {
		super();
		this.new_passwd = new_passwd;
		this.new_phone = new_phone;
		this.member_email = member_email;
	}

	public String getNew_passwd() {
		return new_passwd;
	}
	public void setNew_passwd(String new_passwd) {
		this.new_passwd = new_passwd;
	}
	public String getNew_phone() {
		return new_phone;
	}
	public void setNew_phone(String new_phone) {
		this.new_phone = new_phone;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	

	
	
}
