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

	public int getBoardSeq() {
		return boardSeq;
	}

	public void setBoardSeq(int boardSeq) {
		this.boardSeq = boardSeq;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getBoardWriterDate() {
		return boardWriterDate;
	}

	public void setBoardWriterDate(String boardWriterDate) {
		this.boardWriterDate = boardWriterDate;
	}

	public String getBoardUpdateDate() {
		return boardUpdateDate;
	}

	public void setBoardUpdateDate(String boardUpdateDate) {
		this.boardUpdateDate = boardUpdateDate;
	}

	public int getBoardViewsCount() {
		return boardViewsCount;
	}

	public void setBoardViewsCount(int boardViewsCount) {
		this.boardViewsCount = boardViewsCount;
	}

	public String getBoardAttachments() {
		return boardAttachments;
	}

	public void setBoardAttachments(String boardAttachments) {
		this.boardAttachments = boardAttachments;
	}
	
	
	
	
}
