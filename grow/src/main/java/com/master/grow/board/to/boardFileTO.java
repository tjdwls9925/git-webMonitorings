package com.master.grow.board.to;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Data;

@Data
public class boardFileTO {
		@JsonProperty
		private int idx;
		@JsonProperty
		private int boardIdx;
		@JsonProperty
		private String originalFileName;
		@JsonProperty
		private String storedFilePath;
		@JsonProperty
		private long fileSize;
		
		
		public int getIdx() {
			return idx;
		}
		public void setIdx(int idx) {
			this.idx = idx;
		}
		public int getBoardIdx() {
			return boardIdx;
		}
		public void setBoardIdx(int boardIdx) {
			this.boardIdx = boardIdx;
		}
		public String getOriginalFileName() {
			return originalFileName;
		}
		public void setOriginalFileName(String originalFileName) {
			this.originalFileName = originalFileName;
		}
		public String getStoredFilePath() {
			return storedFilePath;
		}
		public void setStoredFilePath(String storedFilePath) {
			this.storedFilePath = storedFilePath;
		}
		public long getFileSize() {
			return fileSize;
		}
		public void setFileSize(long fileSize) {
			this.fileSize = fileSize;
		}


	
}
