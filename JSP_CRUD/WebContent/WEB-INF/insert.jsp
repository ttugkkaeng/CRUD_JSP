<!-- 

// ���α׷� ���ϸ�: insert.jsp, �ۼ���: 20221222, ���� �����ð�: 20�� 10��
// ����: insert ȭ��

 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert</title>
</head>
<body>

	<h3>���� ���</h3>

	<!-- �ش� �������� �Է��ϰ� �Է� ��ư�� ������ insert_alert.jsp �������� �̵� -->
	<form action="insert_alert.jsp" method="get">
	
		<table border="1">
		
			<tr>
				<th>lib_name</th>
				<td><input type="text" name="lib_name"></td>
			</tr>
			<tr>
				<th>lib_code</th>
				<td><input type="text" name="lib_code"></td>
			</tr>
			<tr>
				<th>ad_name</th>
				<td><input type="text" name="ad_name"></td>
			</tr>
			<tr>
				<th>Address</th>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
			<th>Phone</th>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<th>URL</th>
				<td><input type="text" name="url"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="submit" value="�Է�">
					<!-- �Է� ��� ��, main.jsp�� �̵� -->
					<input type="button" value="���" onclick="location.href='main.jsp'">
				</td>

		</table>
	
	
	</form>

</body>
</html>