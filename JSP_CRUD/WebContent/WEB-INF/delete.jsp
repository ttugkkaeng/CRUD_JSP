<!-- 

// ���α׷� ���ϸ�: delete.jsp, �ۼ���: 20221222, ���� �����ð�: 20�� 10��
// ����: delete ȭ��

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
	
	// �Է¹��� lib_index ���� delete �Լ��� ����
	int res = dao.delete(lib_index);

	// delete ���� ��
	if(res>0){
%>

	<script type="text/javascript">
		
		// �˸� ���� ���
		alert("���� ����!");
		
		// ���� ���� ��, main.jsp�� �̵�
		location.href="main.jsp";
	</script>

<%
	}else{
%>

	<script type="text/javascript">
		// �˸� ���� ���
		alert("���� ����!");
		
		// ���� ���� ��, insert.jsp�� �̵�
		location.href="insert.jsp";
	</script>

<%
	}
%>

</body>
</html>