package com.itwillbs.yata.vo;

import java.sql.Timestamp;

public class MailFormVO {
	private int board_num;
	private String member_email;
	private String board_progress;
	private String board_subject;
	private String board_content;
	private int board_re_ref;
	private int board_re_lev;
	private int board_re_seq;
	private Timestamp board_date;
	
	public MailFormVO() {
		super();
	}

	public MailFormVO(int board_num, String member_email, String board_progress, String board_subject,
			String board_content, int board_re_ref, int board_re_lev, int board_re_seq, Timestamp board_date) {
		super();
		this.board_num = board_num;
		this.member_email = member_email;
		this.board_progress = board_progress;
		this.board_subject = board_subject;
		this.board_content = board_content;
		this.board_re_ref = board_re_ref;
		this.board_re_lev = board_re_lev;
		this.board_re_seq = board_re_seq;
		this.board_date = board_date;
	}

	public int getBoard_num() {
		return board_num;
	}

	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getBoard_progress() {
		return board_progress;
	}

	public void setBoard_progress(String board_progress) {
		this.board_progress = board_progress;
	}

	public String getBoard_subject() {
		return board_subject;
	}

	public void setBoard_subject(String board_subject) {
		this.board_subject = board_subject;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public int getBoard_re_ref() {
		return board_re_ref;
	}

	public void setBoard_re_ref(int board_re_ref) {
		this.board_re_ref = board_re_ref;
	}

	public int getBoard_re_lev() {
		return board_re_lev;
	}

	public void setBoard_re_lev(int board_re_lev) {
		this.board_re_lev = board_re_lev;
	}

	public int getBoard_re_seq() {
		return board_re_seq;
	}

	public void setBoard_re_seq(int board_re_seq) {
		this.board_re_seq = board_re_seq;
	}

	public Timestamp getBoard_date() {
		return board_date;
	}

	public void setBoard_date(Timestamp board_date) {
		this.board_date = board_date;
	}

	@Override
	public String toString() {
		return "MailFormVO [board_num=" + board_num + ", member_email=" + member_email + ", board_progress="
				+ board_progress + ", board_subject=" + board_subject + ", board_content=" + board_content
				+ ", board_re_ref=" + board_re_ref + ", board_re_lev=" + board_re_lev + ", board_re_seq=" + board_re_seq
				+ ", board_date=" + board_date + "]";
	}
	
}
