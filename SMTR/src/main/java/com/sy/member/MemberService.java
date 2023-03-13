package com.sy.member;

public interface MemberService {
	// 회원가입
	public int join(MemberVO mvo);
	// 로그인
	public MemberVO loginCheck(MemberVO mvo);
}
