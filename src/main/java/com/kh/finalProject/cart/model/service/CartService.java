package com.kh.finalProject.cart.model.service;

import java.util.List;

import org.springframework.ui.Model;

import com.kh.finalProject.cart.model.vo.Cart;
import com.kh.finalProject.cart.model.vo.CartList;


public interface CartService {
	
	/*리턴 값만 다르기 때문에 */
	int insertCart(Cart cart);

	List<CartList> cartItemList(String memId);
	List<CartList> cartPacList(String memId);

	void deleteCart(int cartNo);

	void allDeleteCart(String memId);

	int updateCart(Cart cart);

	int sumMoney(String memId);

	Cart getCartItem(Cart cart);

	int updateCartQuantity(Cart existingCart);

	CartList getItemData(int itemNo);


}