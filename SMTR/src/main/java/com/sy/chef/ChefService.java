package com.sy.chef;

import java.util.List;
import java.util.Map;

import com.sy.member.MemberVO;

public interface ChefService {
	// 인기있는 쉐프 count 개수만큼 가져오기
	public List<Map<String, Object>> popularChef(int count);
	// 전체 쉐프 수
	public int chefCount();
}
