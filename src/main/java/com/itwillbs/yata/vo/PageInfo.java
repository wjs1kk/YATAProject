package com.itwillbs.yata.vo;

public class PageInfo {
	private int listCount; // 전체 게시물 목록 갯수
	private int pageListLimit; // 페이지 당 표시할 페이지 번호 갯수
	private int maxPage; // 전체 페이지 수
	private int startPage; // 시작 페이지 번호
	private int endPage; // 끝 페이지 번호
	
	public PageInfo() {}

	public PageInfo(int listCount, int pageListLimit, int maxPage, int startPage, int endPage) {
		super();
		this.listCount = listCount;
		this.pageListLimit = pageListLimit;
		this.maxPage = maxPage;
		this.startPage = startPage;
		this.endPage = endPage;
	}

	// Getter&Setter 정의
	public int getListCount() {
		return listCount;
	}
	
	public void setListCount(int listCount) {
		this.listCount = listCount;
	}
	
	public int getPageListLimit() {
		return pageListLimit;
	}
	
	public void setPageListLimit(int pageListLimit) {
		this.pageListLimit = pageListLimit;
	}
	
	public int getMaxPage() {
		return maxPage;
	}
	
	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}
	
	public int getStartPage() {
		return startPage;
	}
	
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	
	public int getEndPage() {
		return endPage;
	}
	
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	@Override
	public String toString() {
		return "PageInfo [listCount=" + listCount + ", pageListLimit=" + pageListLimit + ", maxPage=" + maxPage
				+ ", startPage=" + startPage + ", endPage=" + endPage + "]";
	}

}