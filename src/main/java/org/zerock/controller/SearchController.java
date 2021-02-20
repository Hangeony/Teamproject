package org.zerock.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.domain.CategoriesVO;
import org.zerock.service.CategoriesService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("/search/*")
public class SearchController {
	private CategoriesService service;
	
	@GetMapping("/")
	public void list(Model model) {
		List<CategoriesVO> list = service.getList();
		model.addAttribute("list", list);
	}
	
}
