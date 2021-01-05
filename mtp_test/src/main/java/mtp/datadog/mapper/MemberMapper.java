package mtp.datadog.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;

import mtp.datadog.domain.MemberVO;

@Mapper
public interface MemberMapper {
	public List<MemberVO> getList();
	public void insert(MemberVO vo);
	public void delete(String vo);
}
