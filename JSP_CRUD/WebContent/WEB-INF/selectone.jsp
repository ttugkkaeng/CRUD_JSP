<!-- 

// 프로그램 파일명: selectone.jsp, 작성일: 20221222, 최종 마감시간: 20시 10분
// 설명: selectone 화면

 -->

<%@page import="com.db.dto.LibDto"%>
<%@page import="com.db.dao.LibDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>SelectOne</title>
</head>
<body>

	<%
	
		// lib_index 값 받아오기
		String lib_index = request.getParameter("lib_index");
		LibDao dao = new LibDao();
		
		// dao의 selectOne 함수
		LibDto dto = dao.selectOne(lib_index);
	
	%>

	<!-- 해당 lib_index의 값들 출력  -->
	<table border="1">
		<tr>
			<th>index: </th>
			<td><%=dto.getLib_index()%></td>
		</tr>
		<tr>
			<th>name: </th>
			<td><%=dto.getLib_name()%></td>
		</tr>
		<tr>
		<th>code: </th>
			<td><%=dto.getLib_code()%></td>
		</tr>
		<tr>
			<th>name: </th>
			<td><%=dto.getLib_name()%></td>
		</tr>
		<tr>
			<th>Address: </th>
			<td><%=dto.getAddress()%></td>
		</tr>
		<tr>
			<th>phone: </th>
			<td><%=dto.getPhone()%></td>
		</tr>
		<tr>
			<th>url: </th>
			<td><%=dto.getUrl()%></td>
		</tr>
		<tr>
			<th>time: </th>
			<td><%=dto.getLib_time()%></td>
		</tr>
		<tr>
			<th>Holiday: </th>
			<td><%=dto.getHoliday()%></td>
		</tr>
		<tr>
			<th>Devision: </th>
			<td><%=dto.getDevision()%></td>
		</tr>
		<tr>
			<th>DevName: </th>
			<td><%=dto.getDev_name()%></td>
		</tr>
		<tr>
			<th>Lat: </th>
			<td><%=dto.getLat()%></td>
		</tr>
		<tr>
			<th>Longitude: </th>
			<td><%=dto.getLongitude()%></td>
		</tr>
		
		<tr>
			<td colspan="2">
				<button>수정</button>&nbsp;&nbsp;
				<button>삭제</button>&nbsp;&nbsp;
				<!-- 목록 버튼 클릭 시, main.jsp로 이동 설정 -->
				<button onclick="location.href='main.jsp'">목록</button>&nbsp;&nbsp;
			</td>
		</tr>
	
	</table>


</body>
</html>