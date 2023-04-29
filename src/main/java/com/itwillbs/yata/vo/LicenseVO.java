package com.itwillbs.yata.vo;

public class LicenseVO {
	private String member_email;
	private String license_num;
	private String license_pass;

	public LicenseVO() {}

	public LicenseVO(String member_email, String license_num, String license_pass) {
		this.member_email = member_email;
		this.license_num = license_num;
		this.license_pass = license_pass;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getLicense_num() {
		return license_num;
	}

	public void setLicense_num(String license_num) {
		this.license_num = license_num;
	}

	public String getLicense_pass() {
		return license_pass;
	}

	public void setLicense_pass(String license_pass) {
		this.license_pass = license_pass;
	}

	@Override
	public String toString() {
		return "LicenseVO [member_email=" + member_email + ", license_num=" + license_num + ", license_pass="
				+ license_pass + "]";
	}

}