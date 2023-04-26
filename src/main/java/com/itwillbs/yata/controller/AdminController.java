package com.itwillbs.yata.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.itwillbs.yata.service.CarService;
import com.itwillbs.yata.service.CouponService;
import com.itwillbs.yata.service.CsService;
import com.itwillbs.yata.service.MemberService;
import com.itwillbs.yata.service.ReservService;
import com.itwillbs.yata.service.ReviewService;
import com.itwillbs.yata.vo.CarVO;
import com.itwillbs.yata.vo.CouponVO;
import com.itwillbs.yata.vo.MailFormVO;
import com.itwillbs.yata.vo.MemberVO;
import com.itwillbs.yata.vo.PageInfo;
import com.itwillbs.yata.vo.ReservVO;

@Controller
public class AdminController {
	
	@Autowired
	private CarService carService;

	@Autowired
	private MemberService memberService;
	@Autowired
	private ReservService reservService;
	@Autowired
	private CsService csService;
	
	@GetMapping("admin")
	public String Admin(HttpSession session, Model model){
		
		String member_email = (String)session.getAttribute("member_email");
		
		// session이 null인지 먼저 판별
		if( session.getAttribute("member_email") == null) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}
		
		// sesiion이 null이 아니면 관리자 권한값을 가져옴
		String isAdmin =  memberService.isAdmin(member_email);
		
		// sesiion이 관리자인 지 확인 후 관리자 페이지 접근
		if(!isAdmin.equals("1")) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}else {
			//총 매출 및 총 예약건수
			Map<String, Integer> map = reservService.getStats();
			//당일 매출 및 총 당일 예약건수
			model.addAttribute("map", map);
			return "admin/admin_main";
		}
		
	}
	
	//회원 목록 조회
	@GetMapping("AdminMemberList.ad")
	public String AdminMember(Model model, HttpSession session
							  , @RequestParam(defaultValue = "1") int pageNum
							  , @RequestParam(defaultValue = "") String searchType
							  , @RequestParam(defaultValue = "") String searchKeyword) {
		
		String member_email = (String)session.getAttribute("member_email");
		System.out.println(searchType);
		System.out.println(searchKeyword);
				
		// session이 null인지 먼저 판별
		if( session.getAttribute("member_email") == null) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}
		
		// sesiion이 null이 아니면 관리자 권한값을 가져옴
		String isAdmin =  memberService.isAdmin(member_email);
		
		// sesiion이 관리자인 지 확인
		if(!isAdmin.equals("1")) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}else {
			// sesiion이 관리자인 지 확인 후 관리자 맴버 리스트 페이지 접근
			
			int listLimit = 10;
			int startRow = (pageNum - 1) * listLimit;
			
			List<MemberVO> memberList = memberService.memberList(startRow, listLimit, searchType, searchKeyword);
			
			int listCount = memberService.getMemberListCount(searchType, searchKeyword);
			System.out.println("총 게시물 수 : " + listCount);
			
			int pageListLimit = 5;
			
			int maxPage = listCount / listLimit + (listCount % listLimit > 0 ? 1 : 0);
			
			int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;
			
			int endPage = startPage + pageListLimit - 1;
			
			if(endPage > maxPage) {
				endPage = maxPage;
			}
			
			PageInfo pageInfo = new PageInfo(listCount, pageListLimit, maxPage, startPage, endPage);
			System.out.println(pageInfo);
			
			model.addAttribute("memberList", memberList);
			model.addAttribute("pageInfo", pageInfo);
			
			return "admin/admin_member_list";
		}
		
	}
	
	//회원 정보 조회
	@GetMapping("AdminMemberInfo.ad")
	public String AdminMemberInfo(MemberVO member, Model model, HttpSession session) {
		
		String member_email = (String)session.getAttribute("member_email");
		
		// session이 null인지 먼저 판별
		if( session.getAttribute("member_email") == null) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}
		
		// sesiion이 null이 아니면 관리자 권한값을 가져옴
		String isAdmin =  memberService.isAdmin(member_email);
		
		// sesiion이 관리자인 지 확인
		if(!isAdmin.equals("1")) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}else {
			// sesiion이 관리자인 지 확인 후 관리자 맴버 정보 페이지 접근
			model.addAttribute("member", member);
			return "admin/admin_member_info";
		}

	}
	
	//회원 정보 수정
	@PostMapping("AdminMemberModifyPro.ad")
	public String AdminMemberModifyPro(MemberVO member, Model model) {
		
		int updateCount = memberService.AdminMemberModifyPro(member);
		
		if(updateCount > 0) {
			return "redirect:AdminMemberList.ad";
		} else {
			model.addAttribute("msg", "회원 정보 수정 실패!");
			return "fail_back";
		}
	}
	
	//회원 정보 삭제
	@GetMapping("AdminMemberDeletePro.ad")
	public String AdminMemberDeletePro(String member_email, Model model) {
		System.out.println(member_email);
		int deleteCount = memberService.AdminMemberDeletePro(member_email);
		return "redirect:/AdminMemberList.ad";
	}
	
	//전체 자동차 목록 조회
	@GetMapping("AdminCarList.ad")
	public String AdminCar(Model model, HttpSession session
						   , @RequestParam(defaultValue = "1") int pageNum
						   , @RequestParam(defaultValue = "") String searchType
						   , @RequestParam(defaultValue = "") String searchKeyword) {
		
		String member_email = (String)session.getAttribute("member_email");
		
		System.out.println(searchType);
		System.out.println(searchKeyword);
		
		// session이 null인지 먼저 판별
		if( session.getAttribute("member_email") == null) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}
		
		// sesiion이 null이 아니면 관리자 권한값을 가져옴
		String isAdmin =  memberService.isAdmin(member_email);
		
		// sesiion이 관리자인 지 확인
		if(!isAdmin.equals("1")) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}else {
			// sesiion이 관리자인 지 확인 후 관리자 자동차 리스트 페이지 접근
			
			
			int listLimit = 10;
			int startRow = (pageNum - 1) * listLimit;
			
			List<CarVO> carList = carService.getCarList(startRow, listLimit, searchType, searchKeyword);
			
			int listCount = carService.getCarListCount(searchType, searchKeyword);
			System.out.println("총 게시물 수 : " + listCount);
			
			int pageListLimit = 5;
			
			int maxPage = listCount / listLimit + (listCount % listLimit > 0 ? 1 : 0);
			
			int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;
			
			int endPage = startPage + pageListLimit - 1;
			
			if(endPage > maxPage) {
				endPage = maxPage;
			}
			
			PageInfo pageInfo = new PageInfo(listCount, pageListLimit, maxPage, startPage, endPage);
			System.out.println(pageInfo);
			
			model.addAttribute("carList", carList);
			model.addAttribute("pageInfo", pageInfo);
			
			
			
			return "admin/admin_car_list";
		}
		
	}
	
	//신규 차량 등록
	@GetMapping("AdminCarRegist.ad")
	public String AdminCarRegist(CarVO car, Model model, HttpSession session) {
		String member_email = (String)session.getAttribute("member_email");
		
		// session이 null인지 먼저 판별
		if( session.getAttribute("member_email") == null) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}
		
		// sesiion이 null이 아니면 관리자 권한값을 가져옴
		String isAdmin =  memberService.isAdmin(member_email);
		
		// sesiion이 관리자인 지 확인
		if(!isAdmin.equals("1")) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}else {
			// sesiion이 관리자인 지 확인 후 관리자 차량 등록 페이지 접근
			return "admin/admin_car_regist";
		}
		
	}
	
	//신규 차량 등록
	@PostMapping("AdminCarRegistPro.ad")
	public String AdminCarRegistPro(CarVO car, HttpSession session, @RequestParam MultipartFile car_model_file) {
		
		// 파일 다운로드 경로 설정
		String uploadDir = "/resources/images/car";
		String saveDir = session.getServletContext().getRealPath(uploadDir);
		System.out.println(saveDir);
		
		
		MultipartFile mFile = car_model_file;
		
		car.setCar_model(mFile.getOriginalFilename().split("\\.")[0]);
		
		// 신규 차량 등록
		carService.adminCarRegist(car);
		
		try {
			// 이미지 파일 업로드
			mFile.transferTo(new File(saveDir, mFile.getOriginalFilename()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:/AdminCarList.ad";
		
		
	}
	
	//차량 정보 수정
	@GetMapping("AdminCarUpdate.ad")
	public String AdminCarUpdate(Model model, @RequestParam(defaultValue = "1") int car_id, HttpSession session) {
		String member_email = (String)session.getAttribute("member_email");
		
		// session이 null인지 먼저 판별
		if( session.getAttribute("member_email") == null) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}
		
		// sesiion이 null이 아니면 관리자 권한값을 가져옴
		String isAdmin =  memberService.isAdmin(member_email);
		
		// sesiion이 관리자인 지 확인
		if(!isAdmin.equals("1")) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}else {
			// sesiion이 관리자인 지 확인 후 관리자 차량 수정 페이지 접근
			CarVO car = carService.selectCar(car_id);
			model.addAttribute("car", car);
			return "admin/admin_car_update";
		}
		
	}
	
	//차량 정보 수정
	@PostMapping("AdminCarUpdatePro.ad")
	public String carUpdate(CarVO new_car, Model model, int car_id, @RequestParam MultipartFile file, HttpSession session) {
		new_car.setCar_id(car_id);
		MultipartFile mFile = file;
		new_car.setCar_model(mFile.getOriginalFilename().split("\\.")[0]);
		System.out.println(new_car.getCar_model());
		int updateCount = carService.carUpdate(new_car);
		
		
		String uploadDir = "/resources/images/car";
		String saveDir = session.getServletContext().getRealPath(uploadDir);
		System.out.println(saveDir);
		
		try {
			// 이미지 파일 업로드
			mFile.transferTo(new File(saveDir, mFile.getOriginalFilename()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(updateCount > 0) {
			model.addAttribute("msg", "차량 정보 수정 완료!");
			model.addAttribute("target", "AdminCarList.ad");
			return "success";
		} else {
			model.addAttribute("msg", "차량 정보 수정 실패!");
			return "fail_back";
		}
		
		
	}
	
	// 차량 정보에서 파일 삭제
	@PostMapping("CardDeleteFile.ad")
	@ResponseBody
	public void CardDeleteFile(@RequestParam(defaultValue = "1") int car_id,
								@RequestParam String car_model,
								HttpServletResponse response,
								HttpSession session
								) {
		
		System.out.println(car_id);
		System.out.println(car_model);
		
		try {
			int deleteCount = carService.removeCarModel(car_id);
			response.setCharacterEncoding("UTF-8");
			
			if(deleteCount > 0) {
				String uploadDir = "/resources/images/car";
				String saveDir = session.getServletContext().getRealPath(uploadDir);
				
				Path path = Paths.get(saveDir + "/" + car_model + ".png");
				Files.deleteIfExists(path);
				response.getWriter().print("true");
			}else {
				response.getWriter().print("false");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	
	//차량 정보 삭제
	@GetMapping("AdminCarDelete.ad")
	public String carDelete(Model model, @RequestParam(defaultValue = "1") int car_id, HttpSession session) {
		
		String member_email = (String)session.getAttribute("member_email");
		
		// session이 null인지 먼저 판별
		if( session.getAttribute("member_email") == null) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}
		
		// sesiion이 null이 아니면 관리자 권한값을 가져옴
		String isAdmin =  memberService.isAdmin(member_email);
		
		// sesiion이 관리자인 지 확인
		if(!isAdmin.equals("1")) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}else {
			// sesiion이 관리자인 지 확인 후 관리자 차량 삭제 페이지 접근
			CarVO car = carService.selectCar(car_id);
			model.addAttribute("car", car);
			return "admin/admin_car_delete";
		}
		
	}
	
	//차량 정보 삭제
	@PostMapping("AdminCarDeletePro.ad")
	public String carDeletePro(Model model, int car_id, HttpSession session) {
		
		int deleteCount = carService.deleteCar(car_id);
		if(deleteCount > 0) {			
			
			model.addAttribute("msg", "삭제가 완료되었습니다!");
			model.addAttribute("target", "AdminCarList.ad");
			return "success";
		} else {
			model.addAttribute("msg", "삭제 실패!");
			return "fail_back";
		}

	}

	
	// 출고된 차량 조회
	@GetMapping("AdminCarShippedList.ad")
	public String AdminShippedRentList(HttpSession session, Model model) {
		
		String member_email = (String)session.getAttribute("member_email");
		
		// session이 null인지 먼저 판별
		if( session.getAttribute("member_email") == null) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}
		
		// sesiion이 null이 아니면 관리자 권한값을 가져옴
		String isAdmin =  memberService.isAdmin(member_email);
		
		// sesiion이 관리자인 지 확인
		if(!isAdmin.equals("1")) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}else {
			// sesiion이 관리자인 지 확인 후 관리자 출고된 차량 리스트 페이지 접근
			List<CarVO> carList = carService.getCarShippedList();
			model.addAttribute("carList" , carList);
			return "admin/admin_car_shipped_List";
		}
		
	}
	
	//예약 목록 리스트 조회
	@GetMapping("AdminReservationList.ad")
	public String AdminReservationList(HttpSession session, Model model,
									   @RequestParam(defaultValue = "1") int pageNum
									   , @RequestParam(defaultValue = "") String searchType
									   , @RequestParam(defaultValue = "") String searchKeyword) {
		
		String member_email = (String)session.getAttribute("member_email");
		System.out.println(searchType);
		System.out.println(searchKeyword);
		
		// session이 null인지 먼저 판별
		if( session.getAttribute("member_email") == null) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}
		
		// sesiion이 null이 아니면 관리자 권한값을 가져옴
		String isAdmin =  memberService.isAdmin(member_email);
		
		// sesiion이 관리자인 지 확인
		if(!isAdmin.equals("1")) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}else {
			// sesiion이 관리자인 지 확인 후 관리자 예약 내역 리스트 페이지 접근
			int listLimit = 10;
			int startRow = (pageNum - 1) * listLimit;
			
			List<ReservVO> reservList = reservService.getReservationList(startRow, listLimit, searchType, searchKeyword);
			
			int listCount = reservService.getReservationListCount(searchType, searchKeyword);
			System.out.println("총 게시물 수 : " + listCount);
			
			int pageListLimit = 5;
			
			int maxPage = listCount / listLimit + (listCount % listLimit > 0 ? 1 : 0);
			
			int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;
			
			int endPage = startPage + pageListLimit - 1;
			
			if(endPage > maxPage) {
				endPage = maxPage;
			}
			
			PageInfo pageInfo = new PageInfo(listCount, pageListLimit, maxPage, startPage, endPage);
			System.out.println(pageInfo);
			
			model.addAttribute("reservList", reservList);
			model.addAttribute("pageInfo", pageInfo);
			
			return "admin/admin_reservation_list";
		}
		
		
	}
	
	//관리자 1:1 문의 내역 리스트 조회
	@GetMapping("AdminMailForm.ad")
	public String AdminMailForm(HttpSession session, Model model
								, @RequestParam(defaultValue = "1") int pageNum
								, @RequestParam(defaultValue = "") String searchType
								, @RequestParam(defaultValue = "") String searchKeyword) {
		
		String member_email = (String)session.getAttribute("member_email");
		
		// session이 null인지 먼저 판별
		if( session.getAttribute("member_email") == null) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}
		
		// sesiion이 null이 아니면 관리자 권한값을 가져옴
		String isAdmin =  memberService.isAdmin(member_email);
		
		// sesiion이 관리자인 지 확인
		if(!isAdmin.equals("1")) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}else {
			
			int listLimit = 10;
			int startRow = (pageNum - 1) * listLimit;
			
			List<MailFormVO> mailFormList = csService.getAdminMailFormList(startRow, listLimit, searchType, searchKeyword);
			
			int listCount = csService.getMailFormListCount(searchType, searchKeyword);
			System.out.println("총 게시물 수 : " + listCount);
			
			int pageListLimit = 5;
			
			int maxPage = listCount / listLimit + (listCount % listLimit > 0 ? 1 : 0);
			
			int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;
			
			int endPage = startPage + pageListLimit - 1;
			
			if(endPage > maxPage) {
				endPage = maxPage;
			}
			
			PageInfo pageInfo = new PageInfo(listCount, pageListLimit, maxPage, startPage, endPage);
			System.out.println(pageInfo);
			
			
			model.addAttribute("mailFormList", mailFormList);
			model.addAttribute("pageInfo", pageInfo);
			
			
			return "admin/admin_mailform_list";
		}
	}
	
	// 관리자 1:1문의 내용 확인 및 답변쓰기 form
	@GetMapping("AdminMailFormReply.ad")
	public String AdminMailFormReply(HttpSession session, Model model, @RequestParam(defaultValue = "1") int board_num) {
		
		String member_email = (String)session.getAttribute("member_email");
		
		// session이 null인지 먼저 판별
		if( session.getAttribute("member_email") == null) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}
		
		// sesiion이 null이 아니면 관리자 권한값을 가져옴
		String isAdmin =  memberService.isAdmin(member_email);
		
		// sesiion이 관리자인 지 확인
		if(!isAdmin.equals("1")) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}else {
			MailFormVO mailform = csService.getMailFormDetail(board_num);
			System.out.println(mailform);
			model.addAttribute("mailform", mailform);
			return "admin/admin_mailform_reply";
		}
	}
	
	// 1:1 문의 답변 기능
	@PostMapping("AdminMailFormReplyPro.ad")
	public String AdminMailFormReplyPro(HttpSession session, Model model, MailFormVO mailform) {
		
		String member_email = (String)session.getAttribute("member_email");
		
		// session이 null인지 먼저 판별
		if( session.getAttribute("member_email") == null) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}
		
		// sesiion이 null이 아니면 관리자 권한값을 가져옴
		String isAdmin =  memberService.isAdmin(member_email);
		
		// sesiion이 관리자인 지 확인
		if(!isAdmin.equals("1")) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}else {
			int insertCount = csService.MailFormReplyPro(mailform);
			return "redirect:/AdminMailForm.ad";
		}
	}
	
	
	//관리자 미답변 1:1 문의 내역 리스트 조회
	@GetMapping("UnansweredMailForm.ad")
	public String AdminUnansweredMailForm(HttpSession session, Model model
								, @RequestParam(defaultValue = "1") int pageNum
								, @RequestParam(defaultValue = "") String searchType
								, @RequestParam(defaultValue = "") String searchKeyword) {
		
		String member_email = (String)session.getAttribute("member_email");
		
		// session이 null인지 먼저 판별
		if( session.getAttribute("member_email") == null) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}
		
		// sesiion이 null이 아니면 관리자 권한값을 가져옴
		String isAdmin =  memberService.isAdmin(member_email);
		
		// sesiion이 관리자인 지 확인
		if(!isAdmin.equals("1")) {
			model.addAttribute("msg", "접근 권한이 없습니다!");
			return "fail_back";
		}else {
			
			int listLimit = 10;
			int startRow = (pageNum - 1) * listLimit;
			
			List<MailFormVO> mailFormList = csService.getAdminUnansweredMailFormList(startRow, listLimit, searchType, searchKeyword);
			
			int listCount = csService.getUnansweredMailFormListCount(searchType, searchKeyword);
			System.out.println("총 게시물 수 : " + listCount);
			
			int pageListLimit = 5;
			
			int maxPage = listCount / listLimit + (listCount % listLimit > 0 ? 1 : 0);
			
			int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;
			
			int endPage = startPage + pageListLimit - 1;
			
			if(endPage > maxPage) {
				endPage = maxPage;
			}
			
			PageInfo pageInfo = new PageInfo(listCount, pageListLimit, maxPage, startPage, endPage);
			System.out.println(pageInfo);
			
			
			model.addAttribute("mailFormList", mailFormList);
			model.addAttribute("pageInfo", pageInfo);
			
			
			return "admin/admin_unansweredmailform_list";
		}
	}
}
