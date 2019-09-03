package com.guoyiyang.senior1.week1.service;

import java.util.List;
import java.util.Map;

import com.guoyiyang.senior1.week1.bean.Firm;

public interface FirmService {
	//添加方法
	int addFirm(Map<String, Object> map);
	//获取所有类型
	List<Map<String, Object>> getAllType();
	//获取所有电影
	List<Map<String, Object>> getAllFirm(Map<String, Object> map);
	//修改回显
	Map<String, Object> getAllFirmById(Firm firm);
	//修改方法
	int updateFirm(Map<String, Object> map);
	//批量删除
	int deleteAll(int[] ids);
}
