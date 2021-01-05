package mtp.datadog.service;

import java.util.List;

import mtp.datadog.domain.MemberVO;

public interface MemberService {
	public List<MemberVO> getList();
	public void insert(MemberVO vo);
	public void delete(String name);
	
}
