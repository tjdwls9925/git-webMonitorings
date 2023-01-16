package com.master.grow.board.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.master.grow.board.to.boardFileTO;
import com.master.grow.board.to.boardTO;

@Mapper
public interface BoardMapper {

	public int InsertBoardWrite(@Param("userID") String userID, @Param("title") String title, @Param("content") String content);

	public ArrayList<boardTO> getSelectAllBoardList(@Param("pageNum") int pageNum);

	public boardTO getSelectBoardDetailContent(@Param("boardSeq") String boardSeq);

	public int UpdateBoardContent(@Param("boardSeq") String boardSeq,@Param("userID") String userID, @Param("title")String title,@Param("content") String content);

	public int DeleteBoardContent(@Param("boardSeq") String boardSeq, @Param("userID") String userID);

	public void UserViewsCount(@Param("boardSeq") String boardSeq ,@Param("count") int count);

	public int insertBoardFileList(List<boardFileTO> list);

	public int InsertFileUpload(List<boardFileTO> list) throws Exception;

	public boardTO SelectBoardSeq();

	public ArrayList<boardFileTO> getSelectBoardFileList(@Param("boardSeq") int boardSeq);

	boardFileTO selectBoardFileInformation(@Param("idx") int idx, @Param("boardIdx") int boardIdx);

	public int SelectFileDelete(@Param("idx")int idx, @Param("boardSeq") int boardSeq);
}
