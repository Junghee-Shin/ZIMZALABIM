<%@page import="com.zim.product.ProductVO"%>
<%@page import="com.zim.join.JoinVO"%>
<%@page import="java.util.List"%>
<%@page import="com.zim.code.CodeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%
	
	List<JoinVO> list = (List<JoinVO>)request.getAttribute("lvlList");
	JoinVO   vo   = (JoinVO)request.getAttribute("vo");
%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->    
<link rel="stylesheet" href="/WEB_EX01/js/jquery-ui.css" >
<!-- 부트스트랩 -->
<link href="/WEB_EX01/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
<script src="/WEB_EX01/js/jquery-1.12.4.js"></script>
<script src="/WEB_EX01/js/jquery-ui.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="/WEB_EX01/js/bootstrap.min.js"></script>	
</head>
<body>

	
			<form name="frmMng" id="frmMng" 
              action="/ZIMZALABIM/join/join.do" method="post" >
		        <input type="hidden"  name="work_div" id="work_div" />      
		    	<label>상품번호</label>
		    	<div><input type="text" readonly="readonly" value="${vo.getProduct_no()}"  name="Product_no" id="Product_no" size="20"  maxlength="20" /></div>
		    	<label>참여일</label>
		    	<div><input type="text" readonly="readonly" value="${vo.getJoin_dt()}"  name="join_dt" id="join_dt" size="20"  maxlength="20" /></div>
				<label>상품이름</label>
		    	<div><input type="text" readonly="readonly" value="${vo.getProductNm()}"  name="ProductNm" id="ProductNm" size="30" maxlength="30"  /></div>
				<label>주문수량</label>
		    	<div><input type="text" readonly="readonly" value="${vo.getJoin_cnt() }" name="Join_cnt" id="Join_cnt" size="20" maxlength="20"  /></div>
				<label>배송상태</label>
				<div><input type="text" readonly="readonly" value="<%if(vo.getDeliveryStatus().equals("100")){out.print("결제완료");}else if(vo.getDeliveryStatus().equals("200")){out.print("공구진행");}else if(vo.getDeliveryStatus().equals("300")){out.print("배송준비");}else{out.print("배송완료");} %>" name="DeliveryStatus" id="DeliveryStatus" size="20" maxlength="20"  /></div>
			    <input type="button" class="btn btn-primary btn-sm" value="조회" id="listTo_btn" />
			             
			</form>	             
	<script>
        function do_move_to_list(){
            if(confirm('공구목록으로 이동 하시겠습니까?')==false)return;
            
            var frm = document.frmMng;
            frm.work_div.value = "do_move_to_list";
            frm.action = "/ZIMZALABIM/join/join.do"
            frm.submit();
         }
         //조회로 이동
       $("#listTo_btn").on("click",function(){
    	   do_move_to_list();
   		 });
	</script>
</body>
</html>