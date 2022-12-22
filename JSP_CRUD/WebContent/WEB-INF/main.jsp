<%@page import="com.db.dto.LibDto"%>
<%@page import="java.util.List"%>
<%@page import="com.db.dao.LibDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<!-- 

// 프로그램 파일명: main.jsp, 작성일: 20221222, 최종 마감시간: 20시 10분
// 설명: main 화면

 -->

<head>
<meta charset="EUC-KR">
<title>Main</title>
</head>
<body>

	<%
	
	// LibDao 객체 생성
	LibDao dao = new LibDao();
	// 전체 목록 출력
	List<LibDto> list = dao.SelectAll();
	
	 %>
	 
	 <!-- 테이블 굵기 설정 -->
	 <table border = "1">
	 	<col width="50px">
	 	<col width="100px">
	 	<col width="200px">
	 	<col width="100px">
	 	<tr>
	 		<th>lib_index</th>
	 		<th>lib_name</th>
	 		<th>lib_code</th>
	 		<th>ad_name</th>
	 		<th>address</th>
	 		<th>phone</th>
	 		<th>url</th>
	 		<th>holiday</th>
	 		<th>devision</th>
	 		<th>dev_name</th>
	 		<th>lat</th>
	 		<th>longitude</th>
	 	</tr>
	 	
	<%
	for (int i=0; i<list.size(); i++){
	%>
	
	
	<!-- 메소드 체이닝에서 알 수 없는 오류 발생 -->
	<tr>
		<td><% list.get(i).getLib_index()%></td>
		<td><% list.get(i).getLib_code()%></td>
		<td><% list.get(i).getLib_name()%></td>
		<!-- lib_index 값을 넘기며 selectOne.jsp로 이동 -->
		<td><a href="selectone.jsp?lib_index=<%= list.get(i).getLib_index()%>"><%= list.get(i).getLib_index()%></a></td>
		<td><% list.get(i).getAddress()%></td>
		<td><% list.get(i).getPhone()%></td>
		<td><% list.get(i).getUrl()%></td>
		<td><% list.get(i).getHoliday()%></td>	
		<td><% list.get(i).getDevision()%></td>	
		<td><% list.get(i).getDev_name()%></td>	
		<td><% list.get(i).getLat()%></td>	
		<td><% list.get(i).getLongitude()%></td>
		
		<!-- lib_index 값을 넘기며 update.jsp로 이동 -->
		<td><a href="update.jsp?lib_index=<%=list.get(i).getLib_index()%>">수정</a></td>
		<!-- lib_index 값을 넘기며 delete.jsp로 이동 -->
		<td><a href="delete.jsp?>lib_index=<%=list.get(i).getLib_index()%>">삭제</a></td>
		
	</tr>
	 
	 <!-- end for -->
	 <% } %>	
	 
	 <tr>
	 	<td colspan="6" align="right">
	 		<button onclick="location.href='insert.jsp'">정보 등록</button>
	 	</td>
	 </tr>
	 </table>
	 
</body>
</html>