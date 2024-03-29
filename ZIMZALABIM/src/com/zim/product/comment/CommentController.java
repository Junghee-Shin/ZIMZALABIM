package com.zim.product.comment;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.google.gson.Gson;
import com.zim.cmn.DTO;
import com.zim.cmn.MessageVO;
import com.zim.cmn.StringUtil;
import com.zim.product.ProductVO;



@WebServlet(description = "댓글관리", urlPatterns = { "/mainpage/commentcontroller.do","/mainpage/commentcontroller.json" })
public class CommentController extends HttpServlet {
    
	// View -> Controller -> Service -> Dao

	private final Logger LOG=Logger.getLogger(CommentDao.class);
	
	private CommentService commentService;
	

    public CommentController() {
    	commentService = new CommentService();
    }

    
    
    //댓글삽입
    public void do_insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	LOG.debug("03.1 do_insert");
    	CommentVO inVO = new CommentVO();
		//param to VO
		String productNo = StringUtil.nvl(request.getParameter("product_no"), "");
		String contents = StringUtil.nvl(request.getParameter("contents"), "");
		String hcommentNo = StringUtil.nvl(request.getParameter("hcomment_no"),"");
		String regId = StringUtil.nvl(request.getParameter("reg_id"), "");
		
		inVO.setProductNo(productNo);
		inVO.setContents(contents);
		inVO.setHcommentNo(hcommentNo);
		inVO.setRegId(regId);

		
		LOG.debug("03.2 param:"+inVO);
		
		//--param
		
		int flag = this.commentService.do_insert(inVO);
		LOG.debug("03.3 flag:"+flag);

//		-------화면 넘기기 위해 이 부분 싹 지워줌-------------		
//		Gson gson = new Gson();
//		response.setContentType("text/html;charset=utf-8");
//		PrintWriter out = response.getWriter();
//		
//		
//		String msg = "";
//		String gsonString = "";
//		if(flag>0){
//			msg = "댓글이 등록되었습니다.";
//		}else{
//			msg = "등록실패.";
//		}
//		
//		gsonString = gson.toJson(new MessageVO(String.valueOf(flag),msg));
//		LOG.debug("03.4 gsonString"+gsonString);
//		out.print(gsonString);
//		-------화면 넘기기 위해 이 부분 싹 지워줌-------------	
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/detail/detail.do?work_div=do_detail_select&productNo="+productNo);
		dispatcher.forward(request, response);
		
		
  	}
  	
  	//댓글수정
	public void do_update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		LOG.debug("03.1 do_update");
		CommentVO inVO = new CommentVO();
		//param to VO
		String contents = StringUtil.nvl(request.getParameter("contents"), "");
		String commentNo = StringUtil.nvl(request.getParameter("comment_no"), "");
		String regId = StringUtil.nvl(request.getParameter("reg_id"), "");
		String productNo = StringUtil.nvl(request.getParameter("product_no"), "");

		
		inVO.setContents(contents);
		inVO.setCommentNo(commentNo);
		inVO.setRegId(regId);
		inVO.setProductNo(productNo);

		
		LOG.debug("03.2 param:"+inVO);
		
		//--param
		
		int flag = this.commentService.do_update(inVO);
		LOG.debug("03.3 flag:"+flag);
		
		Gson gson = new Gson();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		
		String msg = "";
		String gsonString = "";
		if(flag>0){
			msg = "댓글이 수정되었습니다.";
		}else{
			msg = "수정실패.";
		}
		
		gsonString = gson.toJson(new MessageVO(String.valueOf(flag),msg));
		LOG.debug("03.4 gsonString"+gsonString);
		out.print(gsonString);
	}
  	
  	
  	//댓글삭제
	public void do_delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		LOG.debug("03.1 do_delete");
		//service call : 삭제
		CommentVO inVO = new CommentVO();
		
		
		//param: seq
		String productNo = StringUtil.nvl(request.getParameter("product_no"), "");
		String commentNo = StringUtil.nvl(request.getParameter("comment_no"), "");
		String regId = StringUtil.nvl(request.getParameter("reg_id"), "");
		
		
		inVO.setProductNo(productNo);
		inVO.setCommentNo(commentNo);
		inVO.setRegId(regId);
		
		LOG.debug("inVO"+inVO);
		
		int flag = this.commentService.do_delete(inVO);
		LOG.debug("03.2 flag"+flag);
		
//		-------화면 넘기기 위해 이 부분 싹 지워줌-------------
//		//JSON
//		Gson gson = new Gson();
//		response.setContentType("text/html;charset=utf-8");
//		PrintWriter out = response.getWriter();
//		String msg = "";
//		String gsonString = "";
//		
//		//JSON 만들기 위해  VO를 만들어줌
//		
//		//msg=flag
//		//msgContents = '삭제되었습니다.';
//		
//		if(flag>0){
//			//out.println("location.href='/WEB_EX01/member/member.do?work_div=do_retrieve';");
//			msg = "삭제되었습니다.";
//		}else{
//			msg = "삭제실패.";
//		}
//		gsonString = gson.toJson(new MessageVO(String.valueOf(flag),msg));
//		LOG.debug("03.3 gsonString"+gsonString);
//		out.print(gsonString);
//		-------화면 넘기기 위해 이 부분 싹 지워줌-------------
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/detail/detail.do?work_div=do_detail_select&productNo="+productNo);
		dispatcher.forward(request, response);
		
		
	}
  	
  	
  	//댓글 조회
	public void do_retrieve(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		LOG.debug("03.111 do_retrieve");
		
		
		//이 부분 디테일컨트롤러에서 해
		CommentVO inVO = new CommentVO();
		String productNo = StringUtil.nvl(request.getParameter("product_no"),"");
		
		
		inVO.setProductNo(productNo);
		LOG.debug("03.2 inVO:"+inVO);
		
		
		List<CommentVO> list = (List<CommentVO>)commentService.do_retrieve(inVO);
		LOG.debug("----------------------");
		for(CommentVO vo:list){
			LOG.debug(vo);
		}
		LOG.debug("----------------------");
		
		request.setAttribute("list", list);
		request.setAttribute("paramVO", inVO);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/product/detail_view.jsp");
		dispatcher.forward(request, response);
		
	}
    
    

    
    
    public void doServiceHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	LOG.debug("02 doServiceHandler()");
    	request.setCharacterEncoding("UTF-8"); 	//리퀘스트 설정하기
    	
    	
    	String co_work_div = StringUtil.nvl(request.getParameter("co_work_div"), "");
    	LOG.debug("02.1 co_work_div:"+co_work_div);
    	
    	
    	switch(co_work_div){
    	
    		case "do_insert":
    			do_insert(request,response);
    		break;
    	
    		case "do_update":
    			do_update(request,response);
    		break;
    		
    		case "do_delete":
    			do_delete(request,response);
    		break;
    		
    		case "do_retrieve":
    			do_retrieve(request,response);
    		break;
    		
    	}
    	
    }
    
    
    
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LOG.debug("01 doGet()");
		LOG.debug("01.1 CommentService:"+commentService);
		doServiceHandler(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LOG.debug("01 doPost()");
		LOG.debug("01.1 CommentService:"+commentService);
		doServiceHandler(request, response);
	}

}
