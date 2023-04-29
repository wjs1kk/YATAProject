package com.itwillbs.yata.vo;

public class MemberVO {
	
	// 2023-04-29 김동욱 전화번호, 생년월일 삭제
	private String member_email;
	private String member_passwd;
	private String member_name;
	private String member_gender;
	private String member_date;
	private String member_point;
	private String member_license;
	private String member_isadmin;  // 2023-04-26 김동욱 member_isadmin이 빠져서 추가
	public MemberVO() {
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
	public String getMember_point() {
		return member_point;
	}
	public void setMember_point(String member_point) {
		this.member_point = member_point;
	}
	public String getMember_license() {
		return member_license;
	}
	public void setMember_license(String member_license) {
		this.member_license = member_license;
	}
	public String getMember_isadmin() { // 2023-04-26 김동욱 member_isadmin이 빠져서 추가
		return member_isadmin;
	}
	public void setMember_isadmin(String member_isadmin) { // 2023-04-26 김동욱 member_isadmin이 빠져서 추가
		this.member_isadmin = member_isadmin;
	}
	@Override
	public String toString() {
		return "MemberVO [member_email=" + member_email + ", member_passwd=" + member_passwd + ", member_name="
				+ member_name + ", member_gender=" + member_gender + ", member_date=" + member_date + ", member_point="
				+ member_point + ", member_license=" + member_license + ", member_isadmin=" + member_isadmin + "]";
	}
	
	
	
}
