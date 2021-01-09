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

	//�α��ΰ��� �Խñ�����(passsword ��ȣȭ�κе� ����)
	//https://doublesprogramming.tistory.com/211
	
	@Autowired
	private MemberService service;
	
	@PostMapping("/")
	public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr, Model model) {
		System.out.println("�α��� ��Ʈ�ѷ� ------------start");
		model.addAttribute("url", "/");
		if(vo.getName().trim().equals("")) {
			model.addAttribute("msg", "�̸��� �Է����ּ���");
			return "error";
		} else if(vo.getPhone().trim().equals("")) {
			model.addAttribute("msg", "��ȭ��ȣ�� �Է����ּ���");
			return "error";
		}
		
		HttpSession ses = req.getSession();
		MemberVO login = service.login(vo);
		
		if(login == null) {
			System.out.println("�α��� ����");
			ses.setAttribute("login", null);
			rttr.addFlashAttribute("msg",false);
		} else {
			System.out.println("�α��� ����");
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
