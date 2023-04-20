package com.itwillbs.yata.vo;

public class PageVO {
	private int startPage;
	private int endPage;
	private boolean prev, next;
	private int total;
	private Criteria cri; // 현재 페이지번호, 한페이지에 표출할 데이터 갯수

	public PageVO(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;

		//시작페이지, 마지막페이지 계산
		this.endPage = (int)(Math.ceil(cri.getPageNum() / 10.0)) * 10;
		this.startPage = this.endPage -9;

		int realEnd = (int) (Math.ceil(total * 1.0) / cri.getAmount());

		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}

		//이전, 다음 버튼 표출 여부 결정
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
	}

}

class Criteria {
	private int pageNum;
	private int amount;
	private int startNum;

	public Criteria() {
		//객체 생성시 기본 생성자를 호출하여 매개변수를 줘서 매개변수를 가지고 있는 생성자 함수 호출
		this(1, 10); //생성자에서 pageNum=1, amount=10으로 설정
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.startNum = startNum;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getStartNum() {
		return startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}

	@Override
	public String toString() {
		return "Criteria [pageNum=" + pageNum + ", amount=" + amount + ", startNum=" + startNum + "]";
	}

}