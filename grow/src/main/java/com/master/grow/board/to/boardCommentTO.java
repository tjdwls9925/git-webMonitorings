package com.master.grow.board.to;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Data;

@Data
public class boardCommentTO {

	@JsonProperty
	private int rno;
	@JsonProperty
	private int bno;
	@JsonProperty
	private String writer;
	@JsonProperty
	private String content;
	@JsonProperty
	private String regDate;
	
}
