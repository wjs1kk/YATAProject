package com.itwillbs.yata.vo;

public class CouponUsedVO {
	private Integer coup_idx;
	private String member_email;
	private String coup_useable;
	
	
	
	public CouponUsedVO(Integer coup_idx, String member_email, String coup_useable) {
		this.coup_idx = coup_idx;
		this.member_email = member_email;
		this.coup_useable = coup_useable;
	}
	public Integer getCoup_idx() {
		return coup_idx;
	}
	public void setCoup_idx(Integer coup_idx) {
		this.coup_idx = coup_idx;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getCoup_useable() {
		return coup_useable;
	}
	public void setCoup_useable(String coup_useable) {
		this.coup_useable = coup_useable;
	}
	
	
}
