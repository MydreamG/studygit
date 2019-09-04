package com.guoyiyang.senior1.week1.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.guoyiyang.senior1.week1.bean.Firm;
import com.guoyiyang.senior1.week1.service.FirmService;
//控制层
@Controller
public class FirmController {
	@Resource
	private FirmService firmservice;
	
	@RequestMapping("toadd")
	public String toadd(Model model){

		List<Map<String, Object>> typeList = firmservice.getAllType();
		model.addAttribute("type", typeList);

		return "add";
	}
	//添加方法
	@RequestMapping("add")
	@ResponseBody
	public int add(Firm firm,int tid[]){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("firm", firm);
		map.put("tid", tid);
		//调用添加方法并获取返回值
		int addFirm = firmservice.addFirm(map);
		return addFirm;
	}
	@RequestMapping("update")
	@ResponseBody
	public int update(Firm firm,int tid[]){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("firm", firm);
		map.put("tid", tid);
		//修改方法
		int addFirm = firmservice.updateFirm(map);
		return addFirm;
	}
	@RequestMapping("deleteAll")
	@ResponseBody
	public int deleteAll(int[] ids){
		//删除数据库中电影表和中间表中的数据
		int i = firmservice.deleteAll(ids);
		return i;
	}
	
	@RequestMapping("list")
	public String list(Model model,@RequestParam(defaultValue="1")int cpage,@RequestParam(defaultValue="")String fname){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("fname", fname);
		PageHelper.startPage(cpage, 3);
		List<Map<String, Object>> firm = firmservice.getAllFirm(map);
		PageInfo<Map<String, Object>> pageInfo = new PageInfo<Map<String, Object>>(firm);
		model.addAttribute("list", firm);
		model.addAttribute("page", pageInfo);
		return "list";
	}
	@RequestMapping("toupdate")
	public String toupdate(Model model,Firm firm){
		List<Map<String, Object>> type = firmservice.getAllType();
		Map<String, Object> byId = firmservice.getAllFirmById(firm);
		model.addAttribute("type", type);
		model.addAttribute("f", byId);
		return "update";
	}
}
