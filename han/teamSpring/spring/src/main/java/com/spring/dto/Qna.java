package com.spring.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Qna {
	private int no;
	private int plevel;
	private int parno;
	private String title;
	private String content;
	private Date resdate; 
	private int visited;
	private String aid;
}
