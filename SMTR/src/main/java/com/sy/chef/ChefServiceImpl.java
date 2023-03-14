package com.sy.chef;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.sy.member.MemberVO;

public class ChefServiceImpl implements ChefService{
	
	@Autowired
	private ChefDAOImpl chefDao;
	
	public void setChefDao(ChefDAOImpl chefDao) {
		this.chefDao = chefDao;
	}
	
	@Override
	public List<Map<String, Object>> popularChef(int count) {
		return chefDao.popularChef(count);
	}
	
	@Override
	public int chefCount() {
		return chefDao.chefCount();
	}
}
