<%@page import="com.zim.member.MemberVO"%>
<%@page import="com.zim.cmn.StringUtil"%>
<%@page import="org.apache.log4j.Logger"%>
<%@page import="com.zim.cmn.SearchVO"%>
<%@page import="com.zim.join.JoinVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%	
	Logger LOG = Logger.getLogger(this.getClass());
	//화면 목록 읽는 기능
	List<MemberVO> list = (List<MemberVO>)request.getAttribute("list");
	
	//Param 읽는 기능
	String pageNum    = "1";
	String searchDiv  = "";
	String searchWord = "";
	String pageSize   = "10";
	
	//paging
	int maxNum 	    = 0; //총 글수		:server   O
	int currPageNo  = 1; //현재 페이지	:pageNum  O
	int rowPerPage  = 10;//rowCnt	:pageSize O	
	int bottomCount = 10;//bottom cnt
	String url = "/ZIMZALABIM/retrieve/retrieve.do"; //호출URL
	String scriptName = "doSearchPage"; //Javascript함수명	
	
	//paramVO
	SearchVO paramVO = (SearchVO)request.getAttribute("paramVO");
	if(null != paramVO){	
		pageNum    = paramVO.getPageNum()+"";
		searchDiv  = paramVO.getSearchDiv();
		searchWord = paramVO.getSearchWord();
		pageSize   = paramVO.getPageSize()+"";
		LOG.debug("=============================================================");
		LOG.debug("paramVO = "+paramVO);
		LOG.debug("=============================================================");
		
		rowPerPage = Integer.parseInt(pageSize);
		currPageNo = Integer.parseInt(pageNum);
		maxNum = (Integer)request.getAttribute("totalCnt");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->    
<link rel="stylesheet" href="/ZIMZALABIM/js/jquery-ui.css" >
<!-- 부트스트랩 -->
<link href="/ZIMZALABIM/css/bootstrap.min.css" rel="stylesheet">
<title>게시관리</title>
<script src="/ZIMZALABIM/js/jquery-1.12.4.js"></script>
<script src="/ZIMZALABIM/js/jquery-ui.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="/ZIMZALABIM/js/bootstrap.min.js"></script>	
</head>
<body>
	<h3>회원 정보 관리</h3>
	<hr/>
	<form class="row" id="memberSearchFrm" name="memberSearchFrm" action="/ZIMZALABIM/retrieve/retrieve.do" method="post" >
		<input type="hidden"  name="work_div" id="work_div" />
		<input type="hidden"  name="page_num" id="page_num" />
		<!-- 검색영역 -->
			<div class="row col-md-12">
				<div class="form-group col-md-3">
					<select class="form-control" name="search_div" id="search_div">
						<option value="">전체</option>
						<option value="10" <%if(searchDiv.equals("10"))out.print("selected"); %> >이름</option>
						<option value="20" <%if(searchDiv.equals("20"))out.print("selected"); %> >이메일</option>
						<option value="30" <%if(searchDiv.equals("30"))out.print("selected"); %> >ID</option>
					</select>
				</div>
				<div class="form-group col-md-4">
					<input class="form-control" type="text"  name="search_word" id="search_word" value='<%=searchWord %>' />
				</div>
				<div class="form-group col-md-3">
					<select class="form-control" name="page_size" id="page_size">
						<option value="10"  <% if(pageSize.equals("10"))out.print("selected"); %> >10</option>
						<option value="50"  <% if(pageSize.equals("50"))out.print("selected"); %> >50</option>
						<option value="100" <% if(pageSize.equals("100"))out.print("selected"); %> >100</option>
						<option value="200" <% if(pageSize.equals("200"))out.print("selected"); %> >200</option>
					</select>
				</div>
				<div class="form-group col-md-2">
					<input type="button" value="조회" class="form-control btn btn-warning btn-hover" onclick="javascript:do_retrieve();" />
				</div>
			</div>
		<hr/>
		<!--// 검색영역 -->
		<!-- data list -->
		<table style="margin: auto; text-align: center;" class="table table-bordered table-hover" id="listTable">
			<thead class="table-header" style="background-color:#fbb710; color:white;">
				<tr>
					<th width="5%">ID</th>
					<th width="10%">이름</th>
					<th width="5%">등급</th>
					<th width="5%">포인트</th>
					<th width="20%">이메일</th>
					<th width="20%">주민등록번호</th>
					<th width="20%">전화번호</th>
					<th width="20%">수정일</th>				
				</tr>
			</thead>
			<tbody>
				<%
					if(null != list && list.size()>0){
						for(MemberVO vo : list){
				%>		
					<tr>
						<td><%=vo.getUserId() %></td>
						<td><%=vo.getName() %></td>
						<td><%=vo.getLvl() %></td>
						<td><%=vo.getPoint() %></td>
						<td><%=vo.getEmail() %></td>
						<td><%=vo.getResidentNo() %></td>
						<td><%=vo.getCellPhone() %></td>
						<td><%=vo.getModDt() %></td>
					</tr>				
				<%	
						}//--for
					}else{ 
				%>
					<tr>
						<td colspan="99">No data found</td>
					</tr>
				<% }//--else%>
			</tbody>
		</table>		
		<!-- //data list -->
		<div class="container" >
		<!-- paging -->		
			<nav class="text-center">
				<ul class="pagination">
					<li>
						<%=StringUtil.renderPaing(maxNum, currPageNo, rowPerPage, bottomCount, url, scriptName) %>
					</li>
				</ul>
			</nav>
		<!-- //paging -->	
		</div>
	</form>
	    
	<script>
		//페이징
		function doSearchPage(url,page_num){
			//alert(url+","+page_num);
			var frm = document.memberSearchFrm;
			frm.work_div.value = "do_retrieve";
			frm.page_num.value = page_num;
			frm.action = url;
			frm.submit();
		}
		//검색
		function do_retrieve(){
			//alert('do_retrieve');
			var frm = document.memberSearchFrm;
			var work_div = document.getElementById("work_div");
			var page_num = document.getElementById("page_num");
			work_div.value = 'do_retrieve';
			page_num.value = '1';
			console.log(frm);
			console.log(work_div.value);
			console.log(page_num.value);
			
			frm.action     = "/ZIMZALABIM/retrieve/retrieve.do";	
			//alert('frm.action:'+frm.action);
			frm.submit();
		}	
		
		//수정화면으로 이동:servlet->member_mng
		$("#listTable>tbody").on("click","tr",function(){
			var cTrs = $(this);
			var cTds = cTrs.children();
			//console.log(cTds);
			var userId = cTds.eq(0).text();
			console.log("userId : "+userId);
			var frm = document.memberSearchFrm;
			frm.work_div.value = 'do_selectone';
			frm.action = '/ZIMZALABIM/retrieve/retrieve.do?user_id='+userId;
			frm.submit();
		});
		$("#search_word").keypress(function(e){
			//console.log("search_word:"+e);
			if(e.which == 13){//enter
				do_retrieve();
			}
		});
	
		$(document).ready(function(){
		});
		
		
	</script>
</body>
</html>