package com.master.grow.board.to;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Data;

@Data
public class boardTO {
	@JsonProperty
	private int boardSeq;
	
	@JsonProperty
	private String userID;
	
	@JsonProperty
	private String boardTitle;
	
	@JsonProperty
	private String boardContent;
	
	@JsonProperty
	private String boardWriterDate;
	
	@JsonProperty
	private String boardUpdateDate;
	
	@JsonProperty
	private int boardViewsCount;
	
	@JsonProperty
	private String boardAttachments;
	
}
