<!-- 

// ���α׷� ���ϸ�: selectone.jsp, �ۼ���: 20221222, ���� �����ð�: 20�� 10��
// ����: selectone ȭ��

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
	
		// lib_index �� �޾ƿ���
		String lib_index = request.getParameter("lib_index");
		LibDao dao = new LibDao();
		
		// dao�� selectOne �Լ�
		LibDto dto = dao.selectOne(lib_index);
	
	%>

	<!-- �ش� lib_index�� ���� ���  -->
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
				<button>����</button>&nbsp;&nbsp;
				<button>����</button>&nbsp;&nbsp;
				<!-- ��� ��ư Ŭ�� ��, main.jsp�� �̵� ���� -->
				<button onclick="location.href='main.jsp'">���</button>&nbsp;&nbsp;
			</td>
		</tr>
	
	</table>


</body>
</html>