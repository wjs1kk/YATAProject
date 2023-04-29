package com.itwillbs.yata.vo;

public class MemberVO {
	private int member_idx;
	private String member_email;
	private String member_passwd;
	private String member_name;
	private String member_gender;
	private String member_date;
	private int member_point;
	private String member_license;
	private String member_isadmin;
	public MemberVO() {}
	public MemberVO(int member_idx, String member_email, String member_passwd, String member_name, String member_gender,
			String member_date, int member_point, String member_license, String member_isadmin) {
		this.member_idx = member_idx;
		this.member_email = member_email;
		this.member_passwd = member_passwd;
		this.member_name = member_name;
		this.member_gender = member_gender;
		this.member_date = member_date;
		this.member_point = member_point;
		this.member_license = member_license;
		this.member_isadmin = member_isadmin;
	}

	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_passwd() {
		return member_passwd;
	}
	public void setMember_passwd(String member_passwd) {
		this.member_passwd = member_passwd;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_gender() {
		return member_gender;
	}
	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}
	public String getMember_date() {
		return member_date;
	}
	public void setMember_date(String member_date) {
		this.member_date = member_date;
	}
	public int getMember_point() {
		return member_point;
	}
	public void setMember_point(int member_point) {
		this.member_point = member_point;
	}
	public String getMember_license() {
		return member_license;
	}
	public void setMember_license(String member_license) {
		this.member_license = member_license;
	}
	public String getMember_isadmin() {
		return member_isadmin;
	}
	public void setMember_isadmin(String member_isadmin) {
		this.member_isadmin = member_isadmin;
	}
}
