package com.itwillbs.yata.vo;
// review_idx, review_writer, review_title, review_content, review_regdate, review_updateDate, review_viewcnt

import java.sql.*;

public class CouponVO {
	private int coup_idx;
	private String coup_name;
	private String coup_code;
	private Date coup_start;
	private Date coup_end;
	private String coup_percent;
	
	
	public CouponVO(int coup_idx, String coup_name, String coup_code, Date coup_start, Date coup_end,
			String coup_percent) {
		this.coup_idx = coup_idx;
		this.coup_name = coup_name;
		this.coup_code = coup_code;
		this.coup_start = coup_start;
		this.coup_end = coup_end;
		this.coup_percent = coup_percent;
	}
	
	public int getCoup_idx() {
		return coup_idx;
	}
	public void setCoup_idx(int coup_idx) {
		this.coup_idx = coup_idx;
	}
	public String getCoup_name() {
		return coup_name;
	}
	public void setCoup_name(String coup_name) {
		this.coup_name = coup_name;
	}
	public String getCoup_code() {
		return coup_code;
	}
	public void setCoup_code(String coup_code) {
		this.coup_code = coup_code;
	}
	public Date getCoup_start() {
		return coup_start;
	}
	public void setCoup_start(Date coup_start) {
		this.coup_start = coup_start;
	}
	public Date getCoup_end() {
		return coup_end;
	}
	public void setCoup_end(Date coup_end) {
		this.coup_end = coup_end;
	}
	public String getCoup_percent() {
		return coup_percent;
	}
	public void setCoup_percent(String coup_percent) {
		this.coup_percent = coup_percent;
	}
		
	
	
}