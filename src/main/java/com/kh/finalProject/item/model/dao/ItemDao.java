package com.kh.finalProject.item.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.finalProject.item.model.vo.Item;

@Mapper
public interface ItemDao {

	List<Item> selectPacList();

	Item selectOnePac(int INo);

	//삼품페이지 리스트 -->
	List<Item> selectitemList();

		
}
