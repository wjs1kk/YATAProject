package com.itwillbs.yata;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.yata.service.CsService;
import com.itwillbs.yata.service.MemberService;
import com.itwillbs.yata.service.NoticeService;
import com.itwillbs.yata.service.ReviewService;
import com.itwillbs.yata.vo.MailFormVO;
import com.itwillbs.yata.vo.MemberVO;
import com.itwillbs.yata.vo.NoticeVO;
import com.itwillbs.yata.vo.PageInfo;
import com.itwillbs.yata.vo.ReviewVO;
import org.springframework.ui.Model;

@Controller
public class HomeController {
	@Autowired
	private ReviewService service;
	@Autowired
	private NoticeService noticeService;
	@Autowired
	private CsService csService;
	@Autowired
	private MemberService memberService;
	
	//2023-04-26 김동욱 - 기존에 메인으로 올 때 마다 관리자 인 지 확인하는 메서드 삭제
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpSession session) {
		
		List<ReviewVO> reviewList = service.getReview();
	    model.addAttribute("review", reviewList);
	    return "index";
	}
	
	@GetMapping("event")
	public String event() {
		return "notice/event";
	}
	
	// 공지사항
	@GetMapping("notice")
	public String notice(Model model, MemberVO member, HttpSession session,
						@RequestParam(defaultValue = "") String searchType,
						@RequestParam(defaultValue = "") String searchKeyword,
						@RequestParam(defaultValue = "1") int pageNum) {
		
		// 페이징
		int listLimit = 10;
		int startRow = (pageNum - 1) * listLimit;
		
		// 공지사항 리스트 조회
		List<NoticeVO> noticeList = noticeService.getNoticeList(searchType, searchKeyword, startRow, listLimit);
		model.addAttribute("noticeList", noticeList);
		
		
		// 페이징
		int listCount = noticeService.getNoticeListCount(searchType, searchKeyword);
		int pageListLimit = 5;
		int maxPage = listCount / listLimit + (listCount % listLimit > 0 ? 1 : 0);
		int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;
		int endPage = startPage + pageListLimit - 1;
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pageInfo = new PageInfo(listCount, pageListLimit, maxPage, startPage, endPage);
		model.addAttribute("pageInfo", pageInfo);
		
		return "notice/notice";
		
	}
	// 고객센터
	@GetMapping("customer_service")
	public String customer_service(Model model, MailFormVO mailForm, MemberVO member, HttpSession session,
								   @RequestParam(defaultValue = "") String searchType,
								   @RequestParam(defaultValue = "") String searchKeyword,
								   @RequestParam(defaultValue = "1") int pageNum) {
		
		// 자주묻는질문 리스트 조회
		List<NoticeVO> csList = csService.getCsList();
		model.addAttribute("csList", csList);
		
		// 페이징
		int listLimit = 10;
		int startRow = (pageNum - 1) * listLimit;
				
		// 로그인 시
		String member_email = (String)session.getAttribute("member_email");
		mailForm.setMember_email(member_email);
		// 1:1문의 리스트 조회
		List<MailFormVO> myMailForm = csService.myMail(member_email, listLimit, startRow);
		Integer myMailCount = csService.selectMyMailCount(member_email);
		model.addAttribute("myMailForm", myMailForm);
		model.addAttribute("myMailCount", myMailCount);
		System.out.println(myMailForm != null);
		
		// 페이징
		int pageListLimit = 5;
		int maxPage = myMailCount / listLimit + (myMailCount % listLimit > 0 ? 1 : 0);
		int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;
		int endPage = startPage + pageListLimit - 1;
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pageInfo = new PageInfo(myMailCount, pageListLimit, maxPage, startPage, endPage);
		model.addAttribute("pageInfo", pageInfo);
		
		return "customer/customer_service";
	}
	
}