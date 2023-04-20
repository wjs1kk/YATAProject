package com.itwillbs.yata.vo;

public class ReservVO {
	private int res_id;
	private String member_email;
	private int car_id;
	private String res_startDate;
	private String res_endDate;
	private String res_date;
	private String res_totalPrice;
	private String res_place;
	public ReservVO() {
	}
	public ReservVO(int res_id, String member_email, int car_id, String res_startDate, String res_endDate,
			String res_date, String res_totalPrice, String res_place) {
		this.res_id = res_id;
		this.member_email = member_email;
		this.car_id = car_id;
		this.res_startDate = res_startDate;
		this.res_endDate = res_endDate;
		this.res_date = res_date;
		this.res_totalPrice = res_totalPrice;
		this.res_place = res_place;
	}
	public int getRes_id() {
		return res_id;
	}
	public void setRes_id(int res_id) {
		this.res_id = res_id;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public int getCar_id() {
		return car_id;
	}
	public void setCar_id(int car_id) {
		this.car_id = car_id;
	}
	public String getRes_startDate() {
		return res_startDate;
	}
	public void setRes_startDate(String res_startDate) {
		this.res_startDate = res_startDate;
	}
	public String getRes_endDate() {
		return res_endDate;
	}
	public void setRes_endDate(String res_endDate) {
		this.res_endDate = res_endDate;
	}
	public String getRes_date() {
		return res_date;
	}
	public void setRes_date(String res_date) {
		this.res_date = res_date;
	}
	public String getRes_totalPrice() {
		return res_totalPrice;
	}
	public void setRes_totalPrice(String res_totalPrice) {
		this.res_totalPrice = res_totalPrice;
	}
	public String getRes_place() {
		return res_place;
	}
	public void setRes_place(String res_place) {
		this.res_place = res_place;
	}
	
	
}
