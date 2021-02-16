package org.zerock.domain;

import lombok.Data;

@Data
public class CountryVO {
	private Long id;
	private String continent;
	private String large_country;
	private String small_country;
}
