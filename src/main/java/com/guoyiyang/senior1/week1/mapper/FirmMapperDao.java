package com.guoyiyang.senior1.week1.mapper;

import java.util.List;
import java.util.Map;

import com.guoyiyang.senior1.week1.bean.Firm;

public interface FirmMapperDao {
	void addFirm(Map<String, Object> map);

	List<Map<String, Object>> getAllType();

	void addft(Map<String, Object> map);

	List<Map<String, Object>> getAllFirm(Map<String, Object> map);

	Map<String, Object> getAllFirmById(Firm firm);

	void updateFirm(Map<String, Object> map);

	void deleteFt(Map<String, Object> map);

	int deleteAll(int[] ids);

	void deleteAllFt(int[] ids);
}
