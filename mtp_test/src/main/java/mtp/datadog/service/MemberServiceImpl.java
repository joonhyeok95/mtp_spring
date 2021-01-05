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
		System.out.println("Service Member List 서비스---------------start");
		return mapper.getList();
	}

	@Override
	public void insert(MemberVO vo) {
		// TODO Auto-generated method stub
		System.out.println("Service insert 서비스---------------start");
		mapper.insert(vo);
	}

	@Override
	public void delete(String name) {
		// TODO Auto-generated method stub
		System.out.println("Service delete 서비스---------------start");
		mapper.delete(name);
	}

}
