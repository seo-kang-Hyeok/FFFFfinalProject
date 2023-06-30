package com.kh.finalProject.item.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.finalProject.item.model.vo.Item;

@Mapper
public interface ItemDao {

	Item selectOnePackages();

	
//	List<Item> selectPackageList();
	
}
