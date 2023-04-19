package com.itwillbs.yata.vo;
// review_idx, review_writer, review_title, review_content, review_regdate, review_updateDate, review_viewcnt

import java.sql.*;

public class ReviewVO {
	private int review_idx;
	private String member_email;
	private String member_name;
	private String review_title;
	private String review_content;
	private Date review_updateDate;
	private String review_star; 
	private int review_viewcnt;
	
	public ReviewVO() {}
	
	public ReviewVO(int review_idx, String member_email, String member_name, String review_title, String review_content,
			Date review_updateDate, String review_star, int review_viewcnt) {
		this.review_idx = review_idx;
		this.member_email = member_email;
		this.member_name = member_name;
		this.review_title = review_title;
		this.review_content = review_content;
		this.review_updateDate = review_updateDate;
		this.review_star = review_star;
		this.review_viewcnt = review_viewcnt;
	}
	
	public int getReview_idx() {
		return review_idx;
	}

	public void setReview_idx(int review_idx) {
		this.review_idx = review_idx;
	}
	
	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	
	public Date getReview_updateDate() {
		return review_updateDate;
	}
	public void setReview_updateDate(Date review_updateDate) {
		this.review_updateDate = review_updateDate;
	}
	public String getReview_star() {
		return review_star;
	}
	public void setReview_star(String review_star) {
		this.review_star = review_star;
	}
	public int getReview_viewcnt() {
		return review_viewcnt;
	}
	public void setReview_viewcnt(int review_viewcnt) {
		this.review_viewcnt = review_viewcnt;
	}

	@Override
	public String toString() {
		return "ReviewVO [review_idx=" + review_idx + ", member_email=" + member_email + ", member_name=" + member_name
				+ ", review_title=" + review_title + ", review_content=" + review_content + ", review_updateDate=" + review_updateDate + ", review_star=" + review_star
				+ ", review_viewcnt=" + review_viewcnt + "]";
	}
}
