package com.itwillbs.yata.controller;

import java.util.List;

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

	// 고객센터
	// 자주묻는질문 관리자테스트용 작성
	@GetMapping("write.cs")
	public String writeForm() {
		return "customer/write_form";
	}

	@PostMapping("writePro.cs")
	public String writePro(NoticeVO cs) {
		int insertCount = csService.registCs(cs);
		return "redirect:/customer_service";
	}

//	// 자주묻는질문 뷰(폼)페이지
//	@GetMapping("view.cs")
//	public String viewCs(NoticeVO cs, Model model, String board_num) {
//		cs = csService.getCs(board_num);
//		model.addAttribute("cs", cs);
//		return "customer/view_cs_form";
//	}

	// 자주묻는질문 삭제
	@GetMapping("deleteView.cs")
	public String deleteCsView(int board_num, Model model) {
		int deleteCount = csService.deleteCsView(board_num);
		if (deleteCount > 0) {
			model.addAttribute("msg", "삭제 완료!");
			model.addAttribute("target", "redirect:/");
			return "redirect:/customer_service";
		} else {
			model.addAttribute("msg", "삭제 실패!");
			return "fail_back";
		}
	}



	// 자주묻는질문 검색
	@GetMapping("search.cs")
	public String csSearch(String board_subject, Model model) {
		List<NoticeVO> csList = csService.searchByCs(board_subject);
		model.addAttribute("csList", csList);
		return "customer/customer_service";
	}

	// 1:1문의 작성
	@GetMapping("write.mf")
	public String writeForm2() {
		return "customer/write_mail_form";
	}

	@PostMapping("writePro.mf")
	public String writePro2(MailFormVO mailForm) {
		int insertCount = csService.registMailForm(mailForm);
		return "redirect:/customer_service";
	}

	// 1:1문의 뷰(폼)페이지
	@GetMapping("view.mf")
	public String view(MailFormVO mailForm, Model model, String board_num) {
		mailForm = csService.getMailForm(board_num);
		model.addAttribute("mailForm", mailForm);
		return "customer/view_mail_form";
	}

	// 1:1문의 삭제
	@GetMapping("deleteView.mf")
	public String deleteView(int board_num, Model model) {
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
