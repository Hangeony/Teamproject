package org.zerock.service;

import org.springframework.stereotype.Service;
import org.zerock.domain.CountryVO;
import org.zerock.mapper.CountryMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class CountryServiceImpl implements CountryService {
	
	private CountryMapper mapper;
	
	@Override
	public void register(CountryVO country) {
		mapper.insert(country);
	}

}
