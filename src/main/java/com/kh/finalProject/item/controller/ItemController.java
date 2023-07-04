package com.kh.finalProject.item.controller;

import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.finalProject.item.model.service.ItemService;
import com.kh.finalProject.item.model.vo.Item;

@Controller
@RequestMapping("/item")

public class ItemController {

	@Autowired
	private ItemService itemService;
		

	
	@GetMapping("/paclist.bo")
	public String paclist(Model model) {
		List<Item> paclist = itemService.selectPacList();
		System.out.println("paclist =" + paclist);
		model.addAttribute("paclist", paclist );
		return "/item/packageList2";
	}
	
	@GetMapping("pacForm.bo")
	public String pacForm(@RequestParam int INo, Model model) {
		Item pacForm = itemService.selectOnePac(INo);
		model.addAttribute("pacForm", pacForm);
		return "/item/packageForm";
	}

	@GetMapping("/itemlist.bo")
	public String itemlist(Model model) {
		List<Item> itemlist = itemService.selectitemList();
		System.out.println("itemlist =" + itemlist);
		model.addAttribute("itemlist", itemlist);
		return "/item/itemList";
	}
	
	
	
	
}