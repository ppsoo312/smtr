package com.sy.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("memberDao")
public class MemberDAOImpl implements MemberDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	public MemberDAOImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public MemberDAOImpl() {
		
	}
	
	@Override
	public int join(MemberVO mvo) {
		return sqlSession.insert("member.join", mvo);
	}
	
	@Override
	public MemberVO loginCheck(MemberVO mvo) {
		return sqlSession.selectOne("member.loginCheck", mvo);
	}
	
	
}
