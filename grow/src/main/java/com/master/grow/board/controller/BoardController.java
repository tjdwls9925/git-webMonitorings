package com.master.grow.board.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.master.grow.board.service.BoardService;
import com.master.grow.board.to.boardCommentTO;
import com.master.grow.board.to.boardFileTO;
import com.master.grow.board.to.boardTO;
import org.apache.commons.io.FileUtils;
import java.io.File;
import java.net.URLEncoder;

@CrossOrigin
@RestController
@RequestMapping("/board/*")
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	ModelMap map = null;
	
	
	@RequestMapping(value = "/InsertBoardWrite", method = RequestMethod.POST)
	public ModelMap InsertBoardWrite(HttpServletRequest request, HttpServletResponse response) {
		
		map = new ModelMap();
		
		String userID = request.getParameter("userID");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		int result = boardService.InsertBoardWrite(userID,title,content);
		
		
		if(result != 0) {
			try {
				map.put("msgCode", 1); 
			}catch(Exception e) {
				map.put("errorMsg","error");
				e.getStackTrace();
			}
		}else {
			try {
				map.put("msgCode", 0); 
			}catch(Exception e) {
				map.put("errorMsg","error");
				e.getStackTrace();
			}
		}
		
		return map;
		
	}
	
	
	@RequestMapping(value = "/SelectBoardContent", method = RequestMethod.GET)
	public ModelMap SelectBoardContent(HttpServletRequest request, HttpServletResponse response) {
		
		map = new ModelMap();
		
		String pageCount = request.getParameter("pageCount");
		
		ArrayList<boardTO> boardList = boardService.getSelectAllBoardList(pageCount);
		

		
		try {
			map.put("boardList", boardList); 
		}catch(Exception e) {
			map.put("errorMsg","error");
			e.getStackTrace();
		}
		
		return map;
		
	}
	
	
	@RequestMapping(value = "/SelectBoardDetailContent", method = RequestMethod.GET)
	public ModelMap SelectBoardDetailContent(HttpServletRequest request, HttpServletResponse response) {
		
		map = new ModelMap();
		
		String boardSeq = request.getParameter("boardSeq");
		
		boardTO board = boardService.getSelectBoardDetailContent(boardSeq);
		
		try {
			map.put("board", board); 
		}catch(Exception e) {
			map.put("errorMsg","error");
			e.getStackTrace();
		}
		
		return map;
		
	}
	
	
	@RequestMapping(value = "/UpdateBoardContent", method = RequestMethod.PUT)
	public ModelMap UpdateBoardContent(HttpServletRequest request, HttpServletResponse response) {
		
		map = new ModelMap();
		
		String boardSeq = request.getParameter("boardSeq");
		String userID = request.getParameter("userID");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		int result = boardService.UpdateBoardContent(boardSeq,userID,title,content);
		
		try {
			map.put("result", result); 
		}catch(Exception e) {
			map.put("errorMsg","error");
			e.getStackTrace();
		}
		
		return map;
		
	}
	
	@RequestMapping(value = "/DeleteBoardContent", method = RequestMethod.DELETE)
	public ModelMap DeleteBoardContent(HttpServletRequest request, HttpServletResponse response) {
		
		map = new ModelMap();
		
		String boardSeq = request.getParameter("boardSeq");
		String userID = request.getParameter("userID");
		
		int result = boardService.DeleteBoardContent(boardSeq,userID);
		
		System.out.println("반환"+result);
		if(result != 0) {
			try {
				map.put("msgCode", 1); 
			}catch(Exception e) {
				map.put("errorMsg","error");
				e.getStackTrace();
			}
		}else {
			try {
				map.put("msgCode", 0); 
			}catch(Exception e) {
				map.put("errorMsg","error");
				e.getStackTrace();
			}
		}
		
		
		return map;
		
	}
	
	@RequestMapping(value = "/UserViewsCount", method = RequestMethod.PUT)
	public ModelMap UserViewsCount(HttpServletRequest request, HttpServletResponse response) {
		
		map = new ModelMap();
		
		int count = 1;
		String boardSeq = request.getParameter("boardSeq");
		boardService.UserViewsCount(boardSeq,count);
		
		return map;
		
	}
	
	@RequestMapping(value = "/SelectBoardSeq", method = RequestMethod.GET)
	public ModelMap SelectBoardSeq(HttpServletRequest request, HttpServletResponse response) {
		
		map = new ModelMap();
		
		
	
		boardTO boardSeq =  boardService.SelectBoardSeq();
		
		try {
			map.put("boardSeq", boardSeq);
		} catch (Exception e) {
			e.getStackTrace();
		}
		
		return map;
		
	}
	
	
	@RequestMapping(value = "/InsertFileUpload" ,method = RequestMethod.POST)
	public ModelMap InsertFileUpload(HttpServletRequest request, HttpServletResponse response ,MultipartHttpServletRequest multipartHttpServletRequest) throws Exception {
		map = new ModelMap();
			
			String board = multipartHttpServletRequest.getParameter("boardSeq");
			System.out.println(board);
			int boardSeq = Integer.parseInt(board);
			int result = boardService.InsertFileUpload(boardSeq,multipartHttpServletRequest);
		
			map.put("result", result);

		
		return map;
	}
	
	@RequestMapping(value = "/SelectBoardFileUploadList" ,method = RequestMethod.GET)
	public ModelMap SelectBoardFileUploadList(HttpServletRequest request, HttpServletResponse response) {
		map = new ModelMap();
			
		
			String boardSeqParam = request.getParameter("boardSeq");
			int boardSeq = Integer.parseInt(boardSeqParam);
			ArrayList<boardFileTO> fileList = boardService.getSelectBoardFileList(boardSeq);
		
			try {
				
				if(fileList.size() == 0) {
					map.put("fileList", "null");
				}else {
					map.put("fileList", fileList);					
				}
				
			} catch (Exception e) {
				e.getStackTrace();
			}
		

		
		return map;
	}
	
	@GetMapping("/FileDownLoad")
	public void downloadBoardFile(@RequestParam int idx, @RequestParam int boardIdx, HttpServletResponse response) throws Exception {
		
		System.out.println(idx);
		System.out.println(boardIdx);
		boardFileTO boardFile = boardService.selectBoardFileInformation(idx, boardIdx);
		System.out.println(boardFile.getStoredFilePath());
		
		
		if(ObjectUtils.isEmpty(boardFile) == false) {
			String fileName = boardFile.getOriginalFileName();
			
			byte[] files = FileUtils.readFileToByteArray(new File(boardFile.getStoredFilePath()));
			
			response.setContentType("application/octet-stream");
			response.setContentLength(files.length);
			response.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(fileName, "UTF-8")+"\";");
			
			response.getOutputStream().write(files);
			response.getOutputStream().flush();
			response.getOutputStream().close();
		}
	}
	
	
	@RequestMapping(value = "/SelectFileDelete" ,method = RequestMethod.PUT)
	public ModelMap SelectFileDelete(@RequestParam int idx , @RequestParam int boardSeq ,  HttpServletRequest request, HttpServletResponse response) {
		map = new ModelMap();
			
			int result = boardService.SelectFileDelete(idx,boardSeq);
			
			
		
			try {
				if(result == 1) {
					ArrayList<boardFileTO> fileList = boardService.getSelectBoardFileList(boardSeq);
					map.put("fileList", fileList);
				}else {
					map.put("error", 0);
				}
				
				
			} catch (Exception e) {
				e.getStackTrace();
			}
		

		
		return map;
	}
	
	

	
	
}
