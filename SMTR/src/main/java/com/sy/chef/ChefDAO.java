package com.sy.chef;

import java.util.List;
import java.util.Map;

import com.sy.member.MemberVO;

public interface ChefDAO {
	public List<Map<String, Object>> popularChef(int count);
	public int chefCount();

}
