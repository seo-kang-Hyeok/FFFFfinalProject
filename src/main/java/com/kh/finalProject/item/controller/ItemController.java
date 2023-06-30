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
		
	/*
	 * @GetMapping("/packageList.bo") public String packageList(Model model) {
	 * List<Item> packageList = itemService.selectPackageList(); for (Item item :
	 * packageList) { System.out.println(item.getDName());
	 * System.out.println(item.getIContent()); System.out.println(item.getICount());
	 * // 나머지 필드에 대해서도 출력 } model.addAttribute("packageList", packageList); return
	 * "item/packagemain"; }
	 */
	@GetMapping("/packageList2.bo")
	public String packageList(Model model) {
		Item result = itemService.selectOnePackages();
		model.addAttribute("result", result);
		System.out.println("result=" + result);
		return "/item/packageList2";
	}
	@GetMapping("/packageForm.bo")
	public void packageForm() {}
	

/*		
	@GetMapping("/packageList.bo")
	public String packageList(PackageList packageList) {
		int result = ItemService.selectPackageList(packageList);
		return "item/packagemain";
	}
*/
	
	
	
	
}