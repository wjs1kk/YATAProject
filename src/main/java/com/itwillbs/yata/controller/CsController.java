package com.itwillbs.yata.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.itwillbs.yata.service.CsService;
import com.itwillbs.yata.vo.MailFormVO;
import com.itwillbs.yata.vo.NoticeVO;

@Controller
public class CsController {
	@Autowired
	private CsService csService;

	// 자주묻는질문 검색
	@GetMapping("search.cs")
	public String csSearch(String board_subject, Model model) {
		List<NoticeVO> csList = csService.searchByCs(board_subject);
		model.addAttribute("csList", csList);
		return "customer/customer_service";
	}

	// 1:1문의 조회
	@GetMapping("view.mf")
	public String view(MailFormVO mailForm, MailFormVO mailForm2, Model model, int board_num) {
		mailForm = csService.getMailForm(board_num);
		mailForm2 = csService.getMailForm(board_num + 1);
		
		model.addAttribute("mailForm", mailForm);
		model.addAttribute("mailForm2", mailForm2);
		return "customer/view_mail_form";
	}

	// 1:1문의 작성
	@GetMapping("write.mf")
	public String writeForm(HttpSession session, Model model) {
		if(session.getAttribute("member_email") == null) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}
		return "customer/write_mail_form";
	}
	@PostMapping("writePro.mf")
	public String writePro(MailFormVO mailForm, Model model, HttpSession session) {
		if(session.getAttribute("member_email") == null) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}
		String member_email = (String) session.getAttribute("member_email");
		mailForm.setMember_email(member_email);
		int insertCount = csService.registMailForm(mailForm);
		if (insertCount > 0) {
			return "redirect:/customer_service";
		} else {
			model.addAttribute("msg", "1:1문의 작성 실패");
			return "fail_back";
		}
	}
	// 1:1문의 삭제
	@GetMapping("deleteView.mf")
	public String deleteView(int board_num, Model model, HttpSession session) {
		if(session.getAttribute("member_email") == null) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}
		int deleteCount = csService.deleteView(board_num);
		if (deleteCount > 0) {
			model.addAttribute("msg", "삭제 완료!");
			model.addAttribute("target", "redirect:/");
			return "redirect:/customer_service";
		} else {
			model.addAttribute("msg", "삭제 실패!");
			return "fail_back";
		}
	}

}
