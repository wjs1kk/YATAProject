package com.itwillbs.yata.vo;

public class Coupon_usedVO {
	private String coup_name;
	private String coup_start;
	private String coup_end;
	private String coup_percent;
	public Coupon_usedVO() {}
	public Coupon_usedVO(String coup_name, String coup_start, String coup_end, String coup_percent) {
		super();
		this.coup_name = coup_name;
		this.coup_start = coup_start;
		this.coup_end = coup_end;
		this.coup_percent = coup_percent;
	}
	public String getCoup_name() {
		return coup_name;
	}
	public void setCoup_name(String coup_name) {
		this.coup_name = coup_name;
	}
	public String getCoup_start() {
		return coup_start;
	}
	public void setCoup_start(String coup_start) {
		this.coup_start = coup_start;
	}
	public String getCoup_end() {
		return coup_end;
	}
	public void setCoup_end(String coup_end) {
		this.coup_end = coup_end;
	}
	public String getCoup_percent() {
		return coup_percent;
	}
	public void setCoup_percent(String coup_percent) {
		this.coup_percent = coup_percent;
	}

	
	
	
}
