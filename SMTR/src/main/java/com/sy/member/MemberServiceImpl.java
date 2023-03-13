package com.sy.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDAOImpl memberDao;
	
	public void setMemberDao(MemberDAOImpl memberDao) {
		this.memberDao = memberDao;
	}
	
	@Override
	public int join(MemberVO mvo) {
		return memberDao.join(mvo);
	}
	
	@Override
	public MemberVO loginCheck(MemberVO mvo) {
		return memberDao.loginCheck(mvo);
	}
	
}
