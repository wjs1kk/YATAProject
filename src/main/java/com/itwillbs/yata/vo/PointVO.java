package com.itwillbs.yata.vo;

public class PointVO {
	private int point_idx;
	private String member_email;
	private String point_content;
	private String member_point;
	private String point_used;
	private String point_save;

	public PointVO() {}

	public PointVO(int point_idx, String member_email, String point_content, String member_point, String point_used,
			String point_save) {
		this.point_idx = point_idx;
		this.member_email = member_email;
		this.point_content = point_content;
		this.member_point = member_point;
		this.point_used = point_used;
		this.point_save = point_save;
	}

	public int getPoint_idx() {
		return point_idx;
	}

	public void setPoint_idx(int point_idx) {
		this.point_idx = point_idx;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getPoint_content() {
		return point_content;
	}

	public void setPoint_content(String point_content) {
		this.point_content = point_content;
	}

	public String getMember_point() {
		return member_point;
	}

	public void setMember_point(String member_point) {
		this.member_point = member_point;
	}

	public String getPoint_used() {
		return point_used;
	}

	public void setPoint_used(String point_used) {
		this.point_used = point_used;
	}

	public String getPoint_save() {
		return point_save;
	}

	public void setPoint_save(String point_save) {
		this.point_save = point_save;
	}

	@Override
	public String toString() {
		return "PointVO [point_idx=" + point_idx + ", member_email=" + member_email + ", point_content=" + point_content
				+ ", member_point=" + member_point + ", point_used=" + point_used + ", point_save=" + point_save
				+ "]";
	}
}