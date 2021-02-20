package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.CategoriesVO;
import org.zerock.mapper.CategoriesMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class CategoriesServiceImpl implements CategoriesService{
	
	public CategoriesMapper mapper;
	
	@Override
	public List<CategoriesVO> getList() {
		return mapper.getList();
	}
	
	
}
