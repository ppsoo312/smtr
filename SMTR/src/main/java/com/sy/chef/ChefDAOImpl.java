package com.sy.chef;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.sy.member.MemberVO;

public class ChefDAOImpl implements ChefDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	public ChefDAOImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public ChefDAOImpl() {}
	@Override
	public List<Map<String, Object>> popularChef(int count) {
		return sqlSession.selectList("popularChef", count);
	}
	@Override
	public int chefCount() {
		return sqlSession.selectOne("chefCount");
	}
	@Override
	public List<Map<String, Object>> searchRe(int sel) {
		
		if(sel == 1) {
			return sqlSession.selectList("chef.ganre");
		} else if(sel == 2) {
			return sqlSession.selectList("chef.situational");
		} else if(sel == 3) {
			return sqlSession.selectList("chef.ingredient");
		} else {
			return sqlSession.selectList("chef.cookery");
		}
	}
}
