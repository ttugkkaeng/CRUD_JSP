<!-- 

// 프로그램 파일명: update.jsp, 작성일: 20221222, 최종 마감시간: 20시 10분
// 설명: update 화면

 -->

<%@page import="com.db.dto.LibDto"%>
<%@page import="com.db.dao.LibDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Update</title>
</head>
<body>

	<%
		// lib_index 값 변수로 따로 저장
		String lib_index = request.getParameter("lib_index");
	
		LibDao dao = new LibDao();
		LibDto dto = dao.selectOne(lib_index);
		
	%>
	
	<!-- post 형식으로 update_alert.jsp로 이동 -->
	<form action="update_alert.jsp" method="post">
		<table border="2">
			<tr>
				<th>lib_name: </th>
				<td><%=dto.getLib_name()%></td>
			</tr>
			<tr>
				<th>lib_code: </th>
				<td><%=dto.getLib_code()%></td>
			</tr>
			<tr>
				<td colsapn="2">
					<input type="submit" value="수정">
				</td>
			</tr>
		</table>
	</form>
	
	
</body>
</html>