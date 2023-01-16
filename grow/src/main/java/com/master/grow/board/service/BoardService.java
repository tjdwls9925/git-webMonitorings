package com.master.grow.board.service;

import java.util.ArrayList;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.master.grow.board.to.boardFileTO;
import com.master.grow.board.to.boardTO;

public interface BoardService {

	public int InsertBoardWrite(String userID, String title, String content);

	public ArrayList<boardTO> getSelectAllBoardList(String pageCount);

	public boardTO getSelectBoardDetailContent(String boardSeq);

	public int UpdateBoardContent(String boardSeq, String userID, String title, String content);

	public int DeleteBoardContent(String boardSeq, String userID);

	public void UserViewsCount(String boardSeq ,int count);

	public int InsertFileUpload(int boardSeq, MultipartHttpServletRequest multipartHttpServletRequest) throws Exception;

	public boardTO SelectBoardSeq();

	public ArrayList<boardFileTO> getSelectBoardFileList(int boardSeq);

	boardFileTO selectBoardFileInformation(int idx, int boardIdx) throws Exception;

	public int SelectFileDelete(int idx, int boardSeq);
}
