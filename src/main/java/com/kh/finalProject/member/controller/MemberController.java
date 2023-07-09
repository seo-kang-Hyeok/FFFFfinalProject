package com.kh.finalProject.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.finalProject.member.model.service.MemberService;
import com.kh.finalProject.member.model.vo.Member;

@Controller
@RequestMapping("/member")
@SessionAttributes({"loginMember"})	// 로그인한 유저의 데이터를 sessionScope로 변경
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;	// 비밀번호를 암호화
	
	
	@GetMapping("/memberEnroll.me")
	public void memberEnroll() {}
	
	@GetMapping("/loginMember.me")
	public void loginMember() {}
	
	@GetMapping("/adminAll.me")
	public void adminAll() {}
	
	@GetMapping("/checkPwd.me")
	public void checkPwd() {}
	
	@GetMapping("/memberAll.me")
	public void memberAll() {}
	
	@GetMapping("/changePwd.me")
	public void changePwd() {}
	
	@PostMapping("/memberEnroll.me")
	public String memberEnroll(Member member) {
		// 비밀번호 암호화 과정
		String rawPwd = member.getMemPwd();
		
		System.out.println(rawPwd);
		System.out.println(member);
		String encodedPwd = passwordEncoder.encode(rawPwd);
		member.setMemPwd(encodedPwd);
		
		int result = memberService.insertMember(member);
		
		return "redirect:/";
	}
	
	@PostMapping("/loginMember.me")
	public String loginMember(String memId, String memPwd, Model model, RedirectAttributes redirectAttr) {
		// 입력된 id로 member table에서 select
		Member member = memberService.seletOneMember(memId);
		
		// 가져온 member에 대한 인증
		if(member.getMemId() != null) {
			// 비밀번호가 입력된 경우
			if(member.getMemPwd() != null) {
				// 입력된 비밀번호를 암호화된 비밀번호와 비교 인증
				if(passwordEncoder.matches(memPwd, member.getMemPwd())) {
					model.addAttribute("loginMember", member);	
					redirectAttr.addFlashAttribute("msg", member.getMemId() +"님 환영합니다.");	
				}
				else {
					redirectAttr.addFlashAttribute("msg", "비밀번호가 맞지 않습니다.");
				}
		} 
			else {// 비밀번호가 입력되지 않은 경우
				redirectAttr.addFlashAttribute("msg", "비밀번호가 입력되지 않았습니다.");
			}
		}	
		else {// 가입되있지 않은 id인 경우
			redirectAttr.addFlashAttribute("msg", "아이디가 맞지 않습니다.");
		}
		
		return "redirect:/";
	}
	
	@GetMapping("/memberLogout.me")
	public String memberLogout(SessionStatus status) {
		if(!status.isComplete())
			status.setComplete();
			
		return "redirect:/";
	}
	
	
	@PostMapping("/checkPwd.me")
	public String checkPwd(@RequestParam String memPwd, @RequestParam String loginPwd) {
		// 마이페이지를 들어가기 전에 당사자인지 확인하기 위해
		// 패스워드를 다시 물어보는 창을 보여줌..
		// 이 곳에서는 다시 물어본 패스워드를 받아서 맞는지 확인
		if(passwordEncoder.matches(memPwd, loginPwd))
			// 입력받은 패스워드와 암호화된 패스워드가 일치하면
			// 마이페이지창으로 보내줌.
			return "redirect:/member/memberAll.me";
		
		// 입력받은 패스워드와 암호화된 패스워드가 불일치하면
		// 패스워드를 체크하는 창을 다시 보여줌
//		redirectAttr.addAttribute("msg", "패스워드가 맞지 않습니다.");
		return "redirect:/member/checkPwd.me";
	}	
	
	
	@PostMapping("/myPage.me")
	public String editMyPage(Member member) {
		
		return null;
	}
	
	@PostMapping("/changePwd.me")
	public String changePwd(@RequestParam String memPwd, @RequestParam String memId, Model model) {
		System.out.println(memId);
		System.out.println(memPwd);
//		int result = memberService.changePwd(mId, mPwd);

		int result = memberService.changePwd(memId, memPwd);
		if(result > 0)
			model.addAttribute("result", "비번 변경 성공");
			
		return "jsonView";
//		return "redirect:/";
	}
	
	
} // end of class
