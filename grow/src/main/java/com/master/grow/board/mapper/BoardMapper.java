package com.master.grow.board.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.master.grow.board.to.boardTO;

@Mapper
public interface BoardMapper {

	public int InsertBoardWrite(@Param("userID") String userID, @Param("title") String title, @Param("content") String content);

	public ArrayList<boardTO> getSelectAllBoardList(@Param("pageNum") int pageNum);

	public boardTO getSelectBoardDetailContent(@Param("boardSeq") String boardSeq);

	public int UpdateBoardContent(@Param("boardSeq") String boardSeq,@Param("userID") String userID, @Param("title")String title,@Param("content") String content);

	public int DeleteBoardContent(@Param("boardSeq") String boardSeq, @Param("userID") String userID);

	public void UserViewsCount(@Param("boardSeq") String boardSeq ,@Param("count") int count);

}
