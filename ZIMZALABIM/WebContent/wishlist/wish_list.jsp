<%@page import="com.zim.member.MemberVO"%>
<%@page import="com.zim.wishlist.WishlistVO"%>
<%@page import="com.zim.cmn.StringUtil"%>
<%@page import="org.apache.log4j.Logger"%>
<%@page import="com.zim.cmn.SearchVO"%>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Logger LOG = Logger.getLogger(this.getClass());
	//화면목록
	List<WishlistVO> list = (List<WishlistVO>)request.getAttribute("list");
	MemberVO memberVO = (MemberVO)session.getAttribute("user");
	
	request.setAttribute("memberVO", memberVO);	
    //out.print(list);
	//Param
    String pageNum    = "1";
    String searchDiv  = "";
    String searchWord = "";
    String pageSize   = "10";
    
    //paging
    int maxNum        = 0;//총글수: server     O
    int currPageNo    = 1;//현제페이지    :pageNum O
    int rowPerPage    = 10;//rowCnt :pageSize O
    int bottomCount   = 10;//bottom cnt    
    String url        = "/ZIMZALABIM/wishlist/wishlist.do";//호출URL
    String scriptName = "doSearchPage";//Javascript함수명
    
	SearchVO paramVO = (SearchVO)request.getAttribute("paramVO");
	out.print(paramVO);
	if(null != paramVO){
    	pageNum    = paramVO.getNum()+"";
    	searchDiv  = paramVO.getSearchDiv();
    	searchWord = paramVO.getSearchWord();
    	pageSize   = paramVO.getPageSize()+"";		
    	LOG.debug("===========================");
    	LOG.debug("paramVO="+paramVO);
    	LOG.debug("===========================");
}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">  
<link rel="stylesheet" href="/ZIMZALABIM/js/jquery-ui.css" >
<!-- 부트스트랩 -->
<link href="/ZIMZALABIM/css/bootstrap.min.css" rel="stylesheet">
<title>위시리스트</title>
<script src="/ZIMZALABIM/js/jquery-1.12.4.js"></script>
<script src="/ZIMZALABIM/js/jquery.validate.js"></script>
<script src="/ZIMZALABIM/js/additional-methods.js"></script>
<script src="/ZIMZALABIM/js/messages_ko.js"></script>
<script src="/ZIMZALABIM/js/jquery-ui.js"></script>
<script src="/ZIMZALABIM/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 제목 -->
    <!--// 제목 -->
    <!-- 검색 -->
	<div class="form-inline">
		<form name="searchFrm" id="searchFrm" class="form-group" action="/ZIMZALABIM/wishlist/wishlist.do" method="post" class="form-inline">
			<input type="hidden"  name="work_div"   />
			<input type="hidden"  name="page_num"   />
			<input type="hidden"  name="search_word"  value="${memberVO.userId}" />
			<div class="col-md-12">
				<h3>나의 위시리스트</h3>			
			</div>
			<!-- 검색영역 -->
			<div class="col-md-1">
				<select name="page_size" id="page_size"  class="form-control input-sm">
					<option value="10"  <%if(pageSize.equals("10"))out.print("selected"); %> >10 개 씩</option>
					<option value="50"  <%if(pageSize.equals("50"))out.print("selected"); %>>50 개 씩</option>
					<option value="100" <%if(pageSize.equals("100"))out.print("selected"); %>>100 개 씩</option>
					<option value="200" <%if(pageSize.equals("200"))out.print("selected"); %>>200 개 씩</option>
				</select>
			</div>					
			<div class="col-md-1 col-md-offset-11">
				<input type="button" value="조회" onclick="javascript:do_retrieve();"   class="btn btn-warning" />
			</div>
			<hr/>
			<br/>
			<!--// 검색영역 -->
			
			<!-- data list -->
			<table id="listTable"  class="table table-bordered table-hover">
				<thead class="table-header" style="background-color:#fbb710; color:white;">
					<tr>
						<th class="text-center " width="10%">상품번호</th>
						<th class="text-center " width="30%">등록일</th>
						<th class="text-center " width="60%">상품명</th>

					</tr>
				</thead>
				<tbody>
					<%
						if(null != list && list.size()>0){
							for(WishlistVO vo :list){
					%>
							<tr>
								<td class="text-center"><%= vo.getProduct_no() %></td>
								<td class="text-center"><%= vo.getReg_dt() %></td>
								<td class="text-center"><%= vo.getProductNm() %></td>								
							</tr>
					<%	
							}//--for 
						}else{  
					%>
							<tr>
								<td colspan="99">조회하기를 클릭하시면  위시리스트 목록을 볼 수 있습니다.</td>
							</tr>
					
					<%	}//--else %>
				</tbody>
			</table>
			<!--// data list -->
			
			<!-- paging -->
			<div>
				<%=StringUtil.renderPaing(maxNum, currPageNo, rowPerPage, bottomCount, url, scriptName) %>	
			</div>	
			<!--// paging -->
		</form>	
	</div>
<script>
	//page이동
	function doSearchPage(url,page_num){
		//alert(url+","+page_num);
		var frm = document.searchFrm;
		frm.work_div.value = "do_retrieve";
		frm.page_num.value = page_num;
		frm.action = url;
		frm.submit();
		
	}

	//등록화면으로 이동
	
	
	//검색
	function do_retrieve(){
		var frm = document.searchFrm;
		frm.work_div.value = 'do_retrieve';
		frm.page_num.value = '1';
		frm.action         = '/ZIMZALABIM/wishlist/wishlist.do';
		
		//alert('frm.work_div.value:'+frm.work_div.value);
		frm.submit();
	}	

	//수정화면으로 이동:servlet->member_mng.jsp
	//double click event
	$("#listTable>tbody").on("click","tr",function(){
		
		var cTrs = $(this);
		var cTds = cTrs.children();
		console.log(cTds);
		var productNo = cTds.eq(0).text();
		
		
			var frm = document.searchFrm;
		frm.work_div.value ="do_selectone";
		frm.action = '/ZIMZALABIM/wishlist/wishlist.do?product_no='+productNo;
		frm.submit(); 
		
	});
	
	$(function() {
		$("#searchFrm").validate();
	});
	
	$("#search_word").keypress(function(e){
		//console.log("search_word:"+e);
		if(e.which == 13){//enter
			do_retrieve();
		}
	});
	
	$(document).ready(function(){
		//jquery
		
	});
	
	
</script>
</body>
</html>