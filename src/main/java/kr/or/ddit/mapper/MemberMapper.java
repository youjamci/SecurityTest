package kr.or.ddit.mapper;

import kr.or.ddit.vo.MemberVO;

public interface MemberMapper {
	public MemberVO readByUserId(String username);
}
