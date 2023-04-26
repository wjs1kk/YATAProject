package com.itwillbs.yata.vo;
// review_idx, review_writer, review_title, review_content, review_regdate, review_updateDate, review_viewcnt
import java.sql.*;
/*
CREATE TABLE review(
	review_idx int, -- 게시판 id
    res_id int not null, -- 예약내역 번호 
	member_email VARCHAR(50), -- 
	review_content VARCHAR(4000) NOT NULL,
	review_updateDate DATETIME NOT NULL,
    review_star int not null,
    review_place varchar(50) not null,
    primary key(review_id, res_id, member_email)
);
 */
public class ReviewVO {
	private Integer review_idx;
	private int res_id;
	private String member_email;
	private String member_name;
	private String review_content;
	private Date review_updateDate;
	private String review_star; 
	private String review_place;
	public ReviewVO() {}
	
	public ReviewVO(Integer review_idx, int res_id, String member_email, String member_name, String review_content,
			Date review_updateDate, String review_star, String review_place) {
		super();
		this.review_idx = review_idx;
		this.res_id = res_id;
		this.member_email = member_email;
		this.member_name = member_name;
		this.review_content = review_content;
		this.review_updateDate = review_updateDate;
		this.review_star = review_star;
		this.review_place = review_place;
	}

	public Integer getReview_idx() {
		return review_idx;
	}
	public void setReview_idx(Integer review_idx) {
		this.review_idx = review_idx;
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
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
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
	public String getReview_place() {
		return review_place;
	}
	public void setReview_place(String review_place) {
		this.review_place = review_place;
	}

	@Override
	public String toString() {
		return "ReviewVO [review_idx=" + review_idx + ", res_id=" + res_id + ", member_email=" + member_email
				+ ", member_name=" + member_name + ", review_content=" + review_content + ", review_updateDate="
				+ review_updateDate + ", review_star=" + review_star + ", review_place=" + review_place + "]";
	}
	
}