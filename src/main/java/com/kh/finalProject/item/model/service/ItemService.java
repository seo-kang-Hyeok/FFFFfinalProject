package com.kh.finalProject.item.model.service;

import java.util.List;

import com.kh.finalProject.item.model.vo.Item;

public interface ItemService {

	List<Item> selectPacList();

	Item selectOnePac(int INo);

	List<Item> selectitemList();

	
	//	List<Item> selectPackageList();
}
