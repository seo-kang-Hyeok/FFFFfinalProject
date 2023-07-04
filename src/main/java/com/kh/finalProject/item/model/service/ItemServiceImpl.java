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
	public List<Item> selectPacList() {
		return  itemDao.selectPacList();
	}

	@Override
	public Item selectOnePac(int INo) {
		return itemDao.selectOnePac(INo);
	}

	//상품페이지 리스트 불러오기
	@Override
	public List<Item> selectitemList() {
		return  itemDao.selectitemList();
	}


}
