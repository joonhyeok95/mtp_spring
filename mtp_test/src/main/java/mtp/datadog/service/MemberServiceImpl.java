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
		System.out.println("ȸ�� ����Ʈ ����---------------start");
		return mapper.getList();
	}

	@Override
	public void insert(MemberVO vo) {
		System.out.println("ȸ�� ��� ����---------------start");
		mapper.insert(vo);
	}

	@Override
	public void delete(String name) {
		System.out.println("ȸ�� ���� ����---------------start");
		mapper.delete(name);
	}
	@Override
	public MemberVO login(MemberVO vo) {
		// TODO Auto-generated method stub
		return mapper.login(vo);
	}

}
