package com.gr.ssgb.hostclass.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HostClassServiceImpl implements HostClassService{
	private final HostClassDAO hostClassDao;

	@Autowired
	public HostClassServiceImpl(HostClassDAO hostClassDao) {
		this.hostClassDao = hostClassDao;
	}

	@Override
	public List<CategoryVO> selectCategoryAll() {
		return hostClassDao.selectCategoryAll();
	}

	@Override
	public int insertLocation(LocationVO locationVo) {
		return hostClassDao.insertLocation(locationVo);
	}

	@Override
	public int insertClass(HostClassVO hostClassVo) {
		return hostClassDao.insertClass(hostClassVo);
	}

	@Override
	public int insertContents(ContentsVO contentsVo) {
		return hostClassDao.insertContents(contentsVo);
	}

	@Override
	public List<LocationVO> selectBylocation(LocationVO locationVo) {
		return hostClassDao.selectBylocation(locationVo);
	}

	@Override
	public int selectByCNo(HostClassVO hostClassVo) {
		return hostClassDao.selectByCNo(hostClassVo);
	}

	@Override
	public List<HostClassVO> selectClassAll() {
		return hostClassDao.selectClassAll();
	}

	@Override
	public String selectThumbnail(int cNo) {
		return hostClassDao.selectThumbnail(cNo);
	}

	@Override
	public List<Map<String,Object>> selectClassAllContents() {
		return hostClassDao.selectClassAllContents();
	}

	@Override
	public int selectByLNo(LocationVO locationVo) {
		return hostClassDao.selectByLNo(locationVo);
	}

	@Override
	public List<Map<String, Object>> selectClassbyCNo(int cNo) {
		return hostClassDao.selectClassbyCNo(cNo);
	}

	@Override
	public List<Map<String, Object>> selectClassCategory(String categoryName) {
		return hostClassDao.selectClassCategory(categoryName);
	}






	


	
}
