<!-- 

// 프로그램 파일명: delete.jsp, 작성일: 20221222, 최종 마감시간: 20시 10분
// 설명: delete 화면

 -->

<%@page import="com.db.dao.LibDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Delete</title>
</head>
<body>

<%

	String lib_index = request.getParameter("lib_index");

	LibDao dao = new LibDao();
	
	// 입력받은 lib_index 값을 delete 함수에 전달
	int res = dao.delete(lib_index);

	// delete 성공 시
	if(res>0){
%>

	<script type="text/javascript">
		
		// 알림 문구 출력
		alert("제거 성공!");
		
		// 제거 실패 시, main.jsp로 이동
		location.href="main.jsp";
	</script>

<%
	}else{
%>

	<script type="text/javascript">
		// 알림 문구 출력
		alert("제거 실패!");
		
		// 제거 실패 시, insert.jsp로 이동
		location.href="insert.jsp";
	</script>

<%
	}
%>

</body>
</html>