package com.kh.finalProject.cart.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.ui.Model;

import com.kh.finalProject.cart.model.vo.Cart;
import com.kh.finalProject.cart.model.vo.CartList;
import com.kh.finalProject.item.model.vo.Item;

@Mapper
public interface CartDao {

	int insertCart(Cart cart);

	List<CartList> cartItemList(String memId);
	List<CartList> cartPacList(String memId);

	void deleteCart(int cartNo);

	void allDeleteCart(String memId);

	int updateCart(Cart cart);

	int sumMoney(String memId);

	int updateCartQuantity(Cart existingCart);

	Cart getCartItem(Cart cart);

	CartList getItemData(int itemNo);


}
