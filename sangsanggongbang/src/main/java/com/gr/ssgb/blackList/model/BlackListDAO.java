package com.gr.ssgb.blackList.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.gr.ssgb.common.SearchVO;

@Mapper
public interface BlackListDAO {
	List<Map<String, Object>> selectBlackListAll(BlackListVO blackListVO);
	int selectTotalRecord(BlackListVO blackListVO);
	
	int deleteBlackList(int bno);
	int deleteBlackListF(String mId);
	
	int insertBlackList(BlackListVO vo);
	int insertBlackListB(BlackListVO vo);
}
