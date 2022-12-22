<!-- 

// 프로그램 파일명: update_alert.jsp, 작성일: 20221222, 최종 마감시간: 20시 10분
// 설명: update_alert 화면

 -->

<%@page import="com.db.dao.LibDao"%>
<%@page import="com.db.dto.LibDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>update_alert</title>
</head>
<body>


<%

	// update할 lib_index 값 추출
	String lib_index = request.getParameter("lib_index");
	
	// 수정할 name, code 값 추출
	String lib_name = request.getParameter("lib_name");
	String lib_code = request.getParameter("lib_code");

	
	// 해당 생성자가 존재함에도 불구하고 에러 발생 -> 해결
	LibDto dto = new LibDto(lib_index, lib_name, lib_code);
	
	LibDao dao = new LibDao();
	int res = dao.update(dto);
	
	
	// update 성공 시
	if(res>0){
%>

	<script type="text/javascript">
		
		// 알림 문구 출력
		alert("업데이트 성공!");
		
		// 업데이트 실패 시, main.jsp로 이동
		location.href="main.jsp";
	</script>

<%
	}else{
%>

	<script type="text/javascript">
		// 알림 문구 출력
		alert("업데이트 실패!");
		
		// 업데이트 실패 시, insert.jsp로 이동
		location.href="insert.jsp";
	</script>

<%
	}
%>

</body>
</html>