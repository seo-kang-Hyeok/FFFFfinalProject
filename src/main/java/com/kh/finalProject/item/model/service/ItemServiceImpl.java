package com.kh.finalProject.item.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.finalProject.item.model.dao.ItemDao;
import com.kh.finalProject.item.model.vo.Item;


@Service
public class ItemServiceImpl implements ItemService {

	@Autowired
	private ItemDao itemDao;
	
	@Override
	public Item selectOnePackages() {
		
		return itemDao.selectOnePackages();
	}

//	@Autowire
//	private ItemDao itemDao;


}
