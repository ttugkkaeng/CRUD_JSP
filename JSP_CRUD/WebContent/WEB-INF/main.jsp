<%@page import="com.db.dto.LibDto"%>
<%@page import="java.util.List"%>
<%@page import="com.db.dao.LibDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<!-- 

// ���α׷� ���ϸ�: main.jsp, �ۼ���: 20221222, ���� �����ð�: 20�� 10��
// ����: main ȭ��

 -->

<head>
<meta charset="EUC-KR">
<title>Main</title>
</head>
<body>

	<%
	
	// LibDao ��ü ����
	LibDao dao = new LibDao();
	// ��ü ��� ���
	List<LibDto> list = dao.SelectAll();
	
	 %>
	 
	 <!-- ���̺� ���� ���� -->
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
	
	
	<!-- �޼ҵ� ü�̴׿��� �� �� ���� ���� �߻� -->
	<tr>
		<td><% list.get(i).getLib_index()%></td>
		<td><% list.get(i).getLib_code()%></td>
		<td><% list.get(i).getLib_name()%></td>
		<!-- lib_index ���� �ѱ�� selectOne.jsp�� �̵� -->
		<td><a href="selectone.jsp?lib_index=<%= list.get(i).getLib_index()%>"><%= list.get(i).getLib_index()%></a></td>
		<td><% list.get(i).getAddress()%></td>
		<td><% list.get(i).getPhone()%></td>
		<td><% list.get(i).getUrl()%></td>
		<td><% list.get(i).getHoliday()%></td>	
		<td><% list.get(i).getDevision()%></td>	
		<td><% list.get(i).getDev_name()%></td>	
		<td><% list.get(i).getLat()%></td>	
		<td><% list.get(i).getLongitude()%></td>
		
		<!-- lib_index ���� �ѱ�� update.jsp�� �̵� -->
		<td><a href="update.jsp?lib_index=<%=list.get(i).getLib_index()%>">����</a></td>
		<!-- lib_index ���� �ѱ�� delete.jsp�� �̵� -->
		<td><a href="delete.jsp?>lib_index=<%=list.get(i).getLib_index()%>">����</a></td>
		
	</tr>
	 
	 <!-- end for -->
	 <% } %>	
	 
	 <tr>
	 	<td colspan="6" align="right">
	 		<button onclick="location.href='insert.jsp'">���� ���</button>
	 	</td>
	 </tr>
	 </table>
	 
</body>
</html>