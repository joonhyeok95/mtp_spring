package mtp.datadog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mtp.datadog.domain.MemberVO;
import mtp.datadog.service.MemberService;

@Controller
@RequestMapping("/*")
public class MemberController {

	@Autowired
	private MemberService service;
	
	@RequestMapping("/list")
	public String list(Model model) {
		System.out.println("controller list------------start");
		model.addAttribute("list", service.getList());
		return "list";
	}
	/*
	@PostMapping("/insert")
	public String insertData(@RequestBody MemberVO vo) {
		System.out.println("value : " + vo.toString());
		System.out.println("controller insertData ------------start");
		service.insert(vo);
		return "redirect:list";
	}
	*/
	@PostMapping("/insert")
	public String insertDataGet(MemberVO vo) {
		System.out.println("value : " + vo.toString());
		System.out.println("controller insertData ------------start");
		service.insert(vo);
		return "redirect:list";
	}

	@GetMapping("/insert")
	public String insert() {
		System.out.println("controller insert------------start");
		return "insert";
	}
	@GetMapping("/delete")
	public String delete(String name) {
		System.out.println("get name : " + name);
		System.out.println("controller delete------------start");
		service.delete(name);
		return "redirect:/list";
	}
	@GetMapping("/test")
	public String test() {
		System.out.println("test page");
		return "a";
	}
}
