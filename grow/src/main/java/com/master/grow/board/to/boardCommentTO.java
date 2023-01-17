package com.master.grow.board.to;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Data;

@Data
public class boardCommentTO {

	@JsonProperty
	private String reply_id;
	@JsonProperty
	private String board_id;
	@JsonProperty
	private String parent_id;
	@JsonProperty
	private String depth;
	@JsonProperty
	private String reply_content;
	@JsonProperty
	private String reply_writer;
	@JsonProperty
	private String register_datetime;
	
}
