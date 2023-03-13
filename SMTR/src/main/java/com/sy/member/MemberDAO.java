package com.sy.member;

public interface MemberDAO {
	public int join(MemberVO mvo);
	public MemberVO loginCheck(MemberVO mvo);
}
