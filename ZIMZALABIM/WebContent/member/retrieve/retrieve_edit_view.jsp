<%@page import="com.zim.code.CodeVO"%>
<%@page import="com.zim.member.MemberVO"%>
<%@page import="com.zim.cmn.StringUtil"%>
<%@page import="org.apache.log4j.Logger"%>
<%@page import="com.zim.cmn.SearchVO"%>
<%@page import="com.zim.join.JoinVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%	
	List<CodeVO> list = (List<CodeVO>)request.getAttribute("lvlList");
	MemberVO vo = (MemberVO)request.getAttribute("vo");
	request.setAttribute("vo", vo);
	String level = "1";
	if(null != vo){
		level = vo.getLvl();		
	}
	//out.print(vo);
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
	<h3>회원정보 수정	</h3>
	<hr/>
	<!-- button -->
	<input type="button" class="btn btn-warning btn-hover" value="회원삭제" id="delete_btn" />
	<input type="button" class="btn btn-warning btn-hover" value="비번리셋" id="reset_btn" />
	<!-- //button -->
	<hr/>	
	<!-- 회원관리 Form -->
	<form name="frmMng" id="frmMng" action="/ZIMZALABIM/retrieve/retrieve.do" method="post" >
		<input type="hidden"  name="work_div" id="work_div"  />
		<br/>
		<label>아이디</label>
		<div><input type="text" value="${vo.getUserId() }" readonly="readonly" name="user_id" id="user_id" size="20" maxlength="20" placeholder="영문숫자_입력"/></div>
		<br/>
		<label>이름</label>
		<div><input type="text" value="${vo.getName() }" name="name" id="name" size="20" maxlength="30" /></div>
		<br/>
		<label>등급</label>
		<div>
			<%= StringUtil.makeSelectBox(list, "lvl", level, false) %>
		</div>
		<br/>
		<label>이메일</label>
		<div><input type="text" value="${vo.getEmail() }" name="email" id="email" size="20" maxlength="320" /></div>
		<br/>
		<label>전화번호</label>
		<div><input type="text" value="${vo.getCellPhone() }" name="cell_phone" id="cell_phone" size="20" maxlength="13" placeholder="000-0000-0000"/></div>
		<input type="hidden"  name="passwd" id="passwd" value="${vo.getPasswd() }" /> 
		<input type="hidden"  name="resident_no" id="resident_no" value="${vo.getResidentNo() }" /> 
		<input type="hidden"  name="reg_id" id="reg_id" value="${vo.getRegId() }" /> 
		<input type="hidden"  name="reg_dt" id="reg_dt" value="${vo.getRegDt() }" /> 
		<input type="hidden"  name="mod_id" id="mod_id" value="${vo.getModId() }" /> 
	</form>		
	<!-- //회원관리 Form -->
	<br/>
	<hr/>
	<!-- button -->
	<input type="button" value="수정" class="btn btn-warning btn-hover" id="update_btn" />
	<input type="button" value="취소" class="btn btn-warning btn-hover" id="cancel_btn" />
	<!-- //button -->
	<script>
		//랜덤스트링만들기
		function randomString() {
			var chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXTZabcdefghiklmnopqrstuvwxyz";
			var string_length = 15;
			var randomstring = '';
			for (var i = 0; i < string_length; i++) {
				var rnum = Math.floor(Math.random() * chars.length);
				randomstring += chars.substring(rnum, rnum + 1);
			}
			//document.randform.randomfield.value = randomstring;
			return randomstring;
		}
		//비밀번호 초기화
		$("#reset_btn").on("click", function() {			
			//alert('reset_btn');
			var userId = $("#user_id").val(); 
			if(false==confirm(userId+'에게\n비밀번호를 초기화 메일을 전송할까요?'))return;
			//랜덤스트링 생성
			var randomStr = randomString();
			//값 설정
			$("#passwd").val(randomStr);
			$("#work_div").val("do_update");//do_update Set
			
			//param
			var passwd = $("#passwd").val();
			var work_div = $("#work_div").val();
			var email = $("#email").val();
			
			console.log("userId : "+userId);
			console.log("after passwd : "+passwd);
			console.log("email : "+email);
			console.log("work_div : "+work_div);
			
			var param = $("#frmMng").serialize();
			//ajax
            $.ajax({
               type:"POST",
               url:"/ZIMZALABIM/email/email.json",
               dataType:"html",
               data:param, 
           success: function(data){
               var jData = JSON.parse(data);
               if(null != jData && jData.msgId=="1"){
                 alert(jData.msgContents);
               }else{
                 alert(jData.msgId+"|"+jData.msgContents);
               }
             },
            complete:function(data){
             
            },
            error:function(xhr,status,error){
                alert("error:"+error);
            }
           }); 
           //--ajax
		});

		$("#delete_btn").on("click",function() {
			console.log('del_btn');
			console.log($("#user_id").val());
			//validation
			var userId = $("#user_id").val();

			
			if (false == confirm($("#user_id").val()
					+ '을(를)\n삭제 하시겠습니까?'))
				return;

			//ajax
			$.ajax({
				type : "POST",
				url : "/ZIMZALABIM/retrieve/retrieve.json",
				dataType : "html",
				data : {
					"work_div" : "do_delete",
					"userId" : userId
				},
				success : function(data) {
					//{"msgId":"1","msgContents":"삭제되었습니다.","total":0,"num":0}
					var jData = JSON.parse(data);
					console.log(jData.msgId + "|"
							+ jData.msgContents);
					if (null != jData
							&& jData.msgId == "1") {
						alert(jData.msgContents);
						window.location.href = "/ZIMZALABIM/retrieve/retrieve.do?work_div=do_retrieve";
					} else {
						alert(jData.msgId + "|"
								+ jData.msgContents);
					}
				},
				complete : function(data) {

				},
				error : function(xhr, status, error) {
					alert("error:" + error);
				}
			});
			//--ajax
		});
		function movelistTo() {
			if (confirm('취소하시겠습니까?') == false)
				return;

			var frm = document.frmMng;
			frm.work_div.value = "do_move_to_list";
			frm.action = "/ZIMZALABIM/retrieve/retrieve.do"
			frm.submit();
		}
		$("#cancel_btn").on("click", function() {
			movelistTo();
		});

		$("#update_btn").on("click",function() {
			//alert("update_btn");
			//Validation:필수값 체크
			var userId = $("#user_id").val();
			var name = $("#name").val();
			if (null == name || name.trim().length == 0) {
				$("#name").focus();
				alert('이름을 입력하세요.');
				return;
			}
			var email = $("#email").val();
			if (null == email || email.trim().length == 0) {
				$("#email").focus();
				alert('이메일을 입력하세요.');
				return;
			}
			var cell_phone = $("#cell_phone").val();
			if (null == cell_phone
					|| cell_phone.trim().length == 0) {
				$("#cell_phone").focus();
				alert('전화번호를 입력하세요.');
				return;
			}
			//"work_div":"do_update",
			$("#work_div").val("do_update");//do_update Set
			var param = $("#frmMng").serialize();
			//alert(param);
			if (false == confirm(userId + '을(를)\n수정하시겠습니까?'))
				return;

			//ajax
			$.ajax({
				type : "POST",
				url : "/ZIMZALABIM/retrieve/retrieve.json",
				dataType : "html",
				data : param,
				success : function(data) {
					var jData = JSON.parse(data);
					if (null != jData
							&& jData.msgId == "1") {
						alert(jData.msgContents);
						window.location.href = "/ZIMZALABIM/retrieve/retrieve.do?work_div=do_retrieve";
					} else {
						alert(jData.msgId + "|"
								+ jData.msgContents);
					}
				},
				complete : function(data) {

				},
				error : function(xhr, status, error) {
					alert("error:" + error);
				}
			});
			//--ajax  
		});
		$(document).ready(function() {

		});
	</script>
</body>
</html>