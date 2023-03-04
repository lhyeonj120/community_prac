package com.kosa.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	private int b_id;
	private String title;
	private String writer;
	private String content;
	private int hitcount;
	private int likes;
	private Date regdate;
	private Date update_date;
}
