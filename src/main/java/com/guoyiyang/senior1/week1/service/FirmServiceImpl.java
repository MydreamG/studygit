package com.guoyiyang.senior1.week1.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.guoyiyang.senior1.week1.bean.Firm;
import com.guoyiyang.senior1.week1.mapper.FirmMapperDao;

@Service
public class FirmServiceImpl implements FirmService{

	@Resource
	private FirmMapperDao firmmapperdao;
	
	@Override
	public int addFirm(Map<String, Object> map) {
		//添加电影表
		firmmapperdao.addFirm(map);
		String in = (String) map.get("fid");
		map.put("fid", in);
		//添加中间表
		firmmapperdao.addft(map);
		return 1;
	}

	@Override
	public List<Map<String, Object>> getAllType() {
		return firmmapperdao.getAllType();
	}

	@Override
	public List<Map<String, Object>> getAllFirm(Map<String, Object> map) {
		return firmmapperdao.getAllFirm(map);
	}

	@Override
	public Map<String, Object> getAllFirmById(Firm firm) {
		return firmmapperdao.getAllFirmById(firm);
	}

	@Override
	public int updateFirm(Map<String, Object> map) {
		//修改电影表数据
		firmmapperdao.updateFirm(map);
		//修改中间表中数据
		firmmapperdao.deleteFt(map);
		Firm firm = (Firm) map.get("firm");
		map.put("fid", firm.getFid());
		firmmapperdao.addft(map);
		return 1;
	}

	@Override
	public int deleteAll(int[] ids) {
		//批量删除
		int deleteAll = firmmapperdao.deleteAll(ids);
		//删除中间表中的数据
		firmmapperdao.deleteAllFt(ids);
		return deleteAll;
	}

}
