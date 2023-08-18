package gg.lolco.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import gg.lolco.common.AESEncryptor;
import gg.lolco.model.service.CommunityService;
import gg.lolco.model.service.MemberService;
import gg.lolco.model.service.MypageService;
import gg.lolco.model.service.QnaService;
import gg.lolco.model.vo.CommunityBoard;
import gg.lolco.model.vo.Member;
import gg.lolco.model.vo.QaBoard;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/mypage")
@Slf4j
public class MypageController {
	
	private final MypageService service;
	private MemberService serviceMember;
	private QnaService serviceQna;
	private CommunityService serviceCommunity;

	public MypageController(MypageService service, MemberService serviceMember, 
							QnaService serviceQna, CommunityService serviceCommunity) {
		this.service = service;
		this.serviceMember = serviceMember;
		this.serviceQna = serviceQna;
		this.serviceCommunity = serviceCommunity;
	}

	private BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
	
	@RequestMapping("updateAbbrTeam")
	@ResponseBody
	public String updateAbbrTeam (@RequestParam Map<Object, String> param,SessionStatus status, HttpSession session) {
//		System.out.println(param.get("email"));
//		System.out.println(param.get("choiceAbbrTeam"));
		int result = service.updateAbbrTeam(param);
		if(result>0) {
		Member memberupdate=serviceMember.selectMemberById(param);
		if(!status.isComplete()) status.setComplete();
		session.setAttribute("loginMember", memberupdate);
		}
		return "redirect:/mypage/mypage.do";
	}
	
	@RequestMapping("updateProfileImg")
	@ResponseBody
	public String updateProfileImg(@RequestParam Map<Object, String> param, @RequestParam(required = false) MultipartFile file, HttpSession session, SessionStatus status, Model m ) {
		System.out.println("email : "+param.get("email")); // 계정 이메일
		System.out.println("profileImg : "+param.get("profileImg")); // 미리보기 이미지 파일명
		System.out.println("file : "+file); // 가져온 이미지파일
		
		// 업로드파일 저장하기(업로드한 파일이 있을 때)
		if (file != null && !file.isEmpty()) {
			String path = session.getServletContext().getRealPath("/resources/upload/profile/");
			String oriName = file.getOriginalFilename();
			String ext = oriName.substring(oriName.lastIndexOf("."));
			Date today = new Date(System.currentTimeMillis());
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmssSSS");
			int rdn = (int) (Math.random() * 10000) + 1;
			String rename = sdf.format(today) + "_" + rdn + "_" + param.get("email") + ext;
			try {
				file.transferTo(new File(path + rename));// import java.io.File;
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			param.put("profileImg", rename); // 가져온 이미지명(재명명) 전달
		}
		
		int result = service.updateProfileImg(param);
		if(result>0) {
		Member memberupdate=serviceMember.selectMemberById(param);
		if(memberupdate.getPassword().contains("네이버로그인")) {
			param.put("password", "네이버"); //프로필 이미지 나타내는 분기문 처리 관련
			result = service.updatePasswordForProfile(param);	
		}else if(memberupdate.getPassword().contains("카카오로그인")) {
			param.put("password", "카카오"); //프로필 이미지 나타내는 분기문 처리 관련
			result = service.updatePasswordForProfile(param);	
		}
		if(!status.isComplete()) status.setComplete();
		session.setAttribute("loginMember", memberupdate);
		}
		
		return "redirect:/mypage/mypage.do";
	}
	
	
	@RequestMapping("PasswordCheck")
	@ResponseBody
	public int PasswordCheck(@RequestParam Map<Object, String> param) {
		System.out.println("email : "+param.get("email")); // 계정 이메일
		System.out.println("inputPassword : "+param.get("inputPassword")); 
		int cnt = 0;
		
		// EMAIL : param-DB 매칭
		Member m = serviceMember.selectMemberById(param);
		if (m != null && encoder.matches((String) param.get("inputPassword"), m.getPassword())) {
			cnt = 1;
		}
		return cnt ;
	}
	
	
	//이메일 조회
	@RequestMapping("emailCheck")
	@ResponseBody
	public Map<String, Object> emailCheck(@RequestParam Map<Object, String> param, HttpSession session) {
		Map<String, Object> response = new HashMap<>();
		System.out.println("inputEmail : "+param.get("inputEmail")); //입력 이메일
		try {
			param.put("email", AESEncryptor.encrypt(param.get("inputEmail")));
		} catch (Exception e) {
			e.printStackTrace();
		}
		int cnt = 0;
		response.put("email", param.get("email"));
		System.out.println("response.get(\"email\") : " +response.get("email"));
		
		Member m = serviceMember.selectMemberById(param);
		if(m !=null) {
			cnt = 1 ; //이메일 존재
			if (m.getPassword() != null &&  m.getPassword().contains("카카오")) {
				cnt = -1; // 소셜로그인 계정(카카오)
			}else if(m.getPassword() != null && m.getPassword().contains("네이버")) {
				cnt = -2; // 소셜로그인 계정(네이버)
			}else {
				session.setAttribute("email", param.get("inputEmail"));
			}
		}
		response.put("cnt", cnt);
		
		return response;
	}
	
	@RequestMapping("updatePassword")
	@ResponseBody
	public String updatePassword(@RequestParam Map<Object, String> param) {
		System.out.println("email : "+param.get("email")); // 계정 이메일
		System.out.println("updatePassword : "+param.get("updatePassword")); // 미리보기 이미지 파일명
		param.put("updatePassword", encoder.encode(param.get("updatePassword")));
		int result = service.updatePassword(param);
		
		return "redirect:/mypage/mypage.do";
	}
	
	@RequestMapping("withdrawalEmail")
	@ResponseBody
	public String WithdrawalEmail(@RequestParam Map<Object, String> param, SessionStatus status) {
		System.out.println("email:" + param.get("email"));
		int result = service.WithdrawalEmail(param);
		if(!status.isComplete()) status.setComplete();
		return "redirect:/";
	}
	
	// qna리스트 조회
	@RequestMapping("/qnaList")
	@ResponseBody
	public void qnaList(@RequestParam(value = "cPage", defaultValue = "1") int cPage, 
	                    @RequestParam(value = "numPerpage", defaultValue = "100") int numPerpage, 
	                    HttpSession session) {
	    List<QaBoard> qb = serviceQna.selectQnaListAll(Map.of("cPage", cPage, "numPerpage", numPerpage));
	    session.setAttribute("qb", qb);
	}
	
	// 커뮤니티리스트 조회
	@RequestMapping("/selectboardList")
	@ResponseBody
	public String selectboardList(@RequestParam(value = "cPage", defaultValue = "1") int cPage,
			@RequestParam(value = "numPerpage", defaultValue = "100") int numPerpage, HttpSession session) {

		List<CommunityBoard> selectboardList = serviceCommunity
				.selectboardList(Map.of("cPage", cPage, "numPerpage", numPerpage));
//		int totalData = serviceCommunity.selectBoardCount();

		// 이 부분에서는 현재 시간을 LocalDateTime 으로가져오기
		LocalDateTime now = LocalDateTime.now();

		// 리스트 반복문
		for (CommunityBoard b : selectboardList) {
			// 현재 게시글의 작성 시간을 LocalDateTime 형태로 가져오고 있습니다.
			LocalDateTime boardDate = b.getCmBoardDate();

			// 게시글의 작성 시간과 현재 시간 사이의 차이를 Duration 객체로 가져기
			Duration duration = Duration.between(boardDate, now);

			// 시간의 차이를 분 단위로 변환후 diffMinutes에 저장
			long diffMinutes = duration.toMinutes();
			// 분기준
			if (diffMinutes == 0) {
				b.setTimeDifference("방금 전");
			} else if (diffMinutes < 60) {
				b.setTimeDifference(diffMinutes + "분 전");

				// 하루기준
			} else if (diffMinutes < 24 * 60) {
				b.setTimeDifference(duration.toHours() + "시간 전");
			} else {
				b.setTimeDifference(boardDate.format(DateTimeFormatter.ofPattern("yyyy.MM.dd")));
			}
		}
		
		session.setAttribute("selectboardList", selectboardList);
		return "/community/communityMain";
	}
	
	// 포인트리스트 조회
	@RequestMapping("/pointList")
	@ResponseBody
	public void pointList(@RequestParam Map<Object, String> param, 
	                    HttpSession session) {
		Member m = serviceMember.selectMemberById(param);
		System.out.println(m);
		session.setAttribute("loginMember", m);
	}
}















