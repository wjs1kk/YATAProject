package com.itwillbs.yata.vo;


public class NoticeVO {
	private int board_num;
	private String board_subject;
	private String board_content;
	private String board_file;
	private int board_re_ref;
	private int board_re_seq;
	
	public NoticeVO() {
		super();
	}

	public NoticeVO(int board_num, String board_subject, String board_content,
			String board_file, int board_re_ref, int board_re_seq) {
		super();
		this.board_num = board_num;
		this.board_subject = board_subject;
		this.board_content = board_content;
		this.board_file = board_file;
		this.board_re_ref = board_re_ref;
		this.board_re_seq = board_re_seq;
	}

	public int getBoard_num() {
		return board_num;
	}

	public void setBoard_num(int board_num) {
		this.board_num = board_num;
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

	public String getBoard_file() {
		return board_file;
	}

	public void setBoard_file(String board_file) {
		this.board_file = board_file;
	}

	public int getBoard_re_ref() {
		return board_re_ref;
	}

	public void setBoard_re_ref(int board_re_ref) {
		this.board_re_ref = board_re_ref;
	}

	public int getBoard_re_seq() {
		return board_re_seq;
	}

	public void setBoard_re_seq(int board_re_seq) {
		this.board_re_seq = board_re_seq;
	}

	@Override
	public String toString() {
		return "NoticeVO [board_num=" + board_num + ", board_subject=" + board_subject + ", board_content="
				+ board_content + ", board_file=" + board_file + ", board_re_ref=" + board_re_ref + ", board_re_seq="
				+ board_re_seq + "]";
	}

	
}