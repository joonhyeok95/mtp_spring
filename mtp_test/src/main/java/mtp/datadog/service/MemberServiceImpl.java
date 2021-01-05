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
		// TODO Auto-generated method stub
		System.out.println("Service Member List ����---------------start");
		return mapper.getList();
	}

	@Override
	public void insert(MemberVO vo) {
		// TODO Auto-generated method stub
		System.out.println("Service insert ����---------------start");
		mapper.insert(vo);
	}

	@Override
	public void delete(String name) {
		// TODO Auto-generated method stub
		System.out.println("Service delete ����---------------start");
		mapper.delete(name);
	}

}
