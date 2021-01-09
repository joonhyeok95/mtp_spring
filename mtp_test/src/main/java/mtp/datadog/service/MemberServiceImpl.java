package mtp.datadog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mtp.datadog.domain.MemberVO;
import mtp.datadog.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper mapper;
		
	@Override
	public List<MemberVO> getList() {
		System.out.println("회원 리스트 서비스---------------start");
		return mapper.getList();
	}

	@Override
	public void insert(MemberVO vo) {
		System.out.println("회원 등록 서비스---------------start");
		mapper.insert(vo);
	}

	@Override
	public void delete(String name) {
		System.out.println("회원 삭제 서비스---------------start");
		mapper.delete(name);
	}
	@Override
	public MemberVO login(MemberVO vo) {
		// TODO Auto-generated method stub
		return mapper.login(vo);
	}

}
