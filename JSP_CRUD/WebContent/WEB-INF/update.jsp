<!-- 

// ���α׷� ���ϸ�: update.jsp, �ۼ���: 20221222, ���� �����ð�: 20�� 10��
// ����: update ȭ��

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
		// lib_index �� ������ ���� ����
		String lib_index = request.getParameter("lib_index");
	
		LibDao dao = new LibDao();
		LibDto dto = dao.selectOne(lib_index);
		
	%>
	
	<!-- post �������� update_alert.jsp�� �̵� -->
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
					<input type="submit" value="����">
				</td>
			</tr>
		</table>
	</form>
	
	
</body>
</html>