package com.kosa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kosa.domain.BoardVO;
import com.kosa.service.BoardService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {
	
	private BoardService service;
	
	@GetMapping("/list")
	public void getList(Model model) {
		model.addAttribute("list", service.getList());
	}
	
	@GetMapping("/get")
	public void get(@RequestParam("b_id") int b_id, Model model) {
		model.addAttribute("board", service.get(b_id));
	}
	
	@GetMapping("/register")
	public void register() {
		
	}
	
	@PostMapping("/register")
	public String register(BoardVO board, RedirectAttributes rttr) {
		service.register(board);
		
		rttr.addFlashAttribute("result", board.getB_id());
		
		return "redirect:/board/list";
	}
	
	@PostMapping("/modify")
	public String modify(BoardVO board, RedirectAttributes rttr) {
		if(service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}

		return "redirect:/board/list";
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("b_id") int b_id, RedirectAttributes rttr) {
		if(service.remove(b_id)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/board/list";
	}

}
