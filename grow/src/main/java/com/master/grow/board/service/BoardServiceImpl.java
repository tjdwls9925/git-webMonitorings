package com.master.grow.board.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.master.grow.board.mapper.BoardMapper;
import com.master.grow.board.to.boardTO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper boardMapper;
	
	public int InsertBoardWrite(String userID, String title, String content) {
		
		int result = boardMapper.InsertBoardWrite(userID , title , content);
		
		return result;
		
	}
	
	
	public ArrayList<boardTO> getSelectAllBoardList(String pageCount){
	
		int pageNum = Integer.parseInt(pageCount);
		
		ArrayList<boardTO> boardList = boardMapper.getSelectAllBoardList(pageNum);
		
		return boardList;
		
	}
	
	public boardTO getSelectBoardDetailContent(String boardSeq) {
		
		boardTO board = boardMapper.getSelectBoardDetailContent(boardSeq);
		
		return board;
		
	}
	
	public int UpdateBoardContent(String boardSeq, String userID, String title, String content) {
			
		int result = boardMapper.UpdateBoardContent(boardSeq,userID,title,content);
		
		return result;
	}
	
	public int DeleteBoardContent(String boardSeq, String userID) {
		
		int result = boardMapper.DeleteBoardContent(boardSeq,userID);
		
		return result;
		
	}
	
	public void UserViewsCount(String boardSeq , int count) {
		
		boardMapper.UserViewsCount(boardSeq , count);
		
	}
	
}
