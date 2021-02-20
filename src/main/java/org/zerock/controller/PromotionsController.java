package org.zerock.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.zerock.domain.Criteria;
import org.zerock.domain.PromotionsVO;
import org.zerock.service.PromotionsService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/board/*")
@Log4j
@AllArgsConstructor
public class PromotionsController {
	
	private PromotionsService service;
	
	//추가
	@PostMapping(value ="/register",consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> create(@RequestBody PromotionsVO vo){
		log.info("vo : "+ vo);
		
		int insertCount = service.register(vo);
		
		log.info("PromotionsController count : " + insertCount);
		
		if(insertCount == 1) {
			return new ResponseEntity<>("success",HttpStatus.OK);
		}else {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	//하나만 읽을때
	@GetMapping(value="/{id}",produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<PromotionsVO> get(@PathVariable("id") Long id){
		PromotionsVO vo = service.get(id);
		
		log.info("PromotionsController id : " + id);
		
		return new ResponseEntity<PromotionsVO>(vo, HttpStatus.OK);
	}
	
	//여러개 읽을때
	@GetMapping(value="/pages/{id}/{page}",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<PromotionsVO>> getList(@PathVariable("page") int page, @PathVariable("id") Long id){
		
		Criteria cri = new Criteria(page, 5);
		List<PromotionsVO> list = service.getList(cri, id);
		
		log.info("PromotionsController list" + list);
		
		return new ResponseEntity<List<PromotionsVO>>(list, HttpStatus.OK);
	}
	
	
	//수정
	@RequestMapping(value = "/{id}",
			method = {RequestMethod.PUT, RequestMethod.PATCH},
			consumes = MediaType.APPLICATION_JSON_VALUE, 
			produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> modify(@RequestBody PromotionsVO vo,  @PathVariable Long id){
		vo.setId(id);
		
		log.info("PromotionsController modify vo" + vo);
		
		int cnt = service.modify(vo);
		
		if(cnt == 1) {
			return new ResponseEntity<>("success",HttpStatus.OK);
		}else {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
	}
	
	//삭제
	@DeleteMapping(value="/{id}", produces = MediaType.TEXT_PLAIN_VALUE )
	public ResponseEntity<String> remove(@PathVariable("id") Long id){
		
		int cnt = service.remove(id);
		
		log.info("PromotionsController remove" + cnt);
		
		if(cnt == 1) {
			return new ResponseEntity<>("success",HttpStatus.OK);
		}else {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
}
