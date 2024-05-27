package com.spring.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Board {
	private int no;
	private String title;
	private String content;
	private String author;
	private String datafile;
	private Date resdate;
	private int visited;
}
