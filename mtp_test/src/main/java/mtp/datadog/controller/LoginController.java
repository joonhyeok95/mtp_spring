package mtp.datadog.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import mtp.datadog.domain.MemberVO;
import mtp.datadog.service.MemberService;

@Controller
public class LoginController {

	// 로그인관련 게시글참고(passsword 암호화부분도 설명)
	// https://doublesprogramming.tistory.com/211

	@Autowired
	private MemberService service;

	@PostMapping("/")
	public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr, Model model) {
		//System.out.println("로그인 컨트롤러 ------------start");
		model.addAttribute("url", "/");
		if (vo.getName().trim().equals("")) {
			model.addAttribute("msg", "이름을 입력해주세요");
			return "error";
		} else if (vo.getPhone().trim().equals("")) {
			model.addAttribute("msg", "전화번호를 입력해주세요");
			return "error";
		}

		HttpSession ses = req.getSession();
		MemberVO login = service.login(vo);

		if (login == null) {
			//System.out.println("로그인 실패");
			ses.setAttribute("login", null);
			rttr.addFlashAttribute("msg", false);

			model.addAttribute("msg", "이름이나 전화번호가 틀렸습니다.");
			return "error";
		} else {
			System.out.println("로그인 성공");
			ses.setAttribute("login", login);
		}
		return "redirect:/";
	}

	@GetMapping("/logout")
	public String logout(HttpSession ses) {
		ses.invalidate();
		return "redirect:/";
	}
}
