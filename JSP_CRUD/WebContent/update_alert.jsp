<!-- 

// ���α׷� ���ϸ�: update_alert.jsp, �ۼ���: 20221222, ���� �����ð�: 20�� 10��
// ����: update_alert ȭ��

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

	// update�� lib_index �� ����
	String lib_index = request.getParameter("lib_index");
	
	// ������ name, code �� ����
	String lib_name = request.getParameter("lib_name");
	String lib_code = request.getParameter("lib_code");

	
	// �ش� �����ڰ� �����Կ��� �ұ��ϰ� ���� �߻� -> �ذ�
	LibDto dto = new LibDto(lib_index, lib_name, lib_code);
	
	LibDao dao = new LibDao();
	int res = dao.update(dto);
	
	
	// update ���� ��
	if(res>0){
%>

	<script type="text/javascript">
		
		// �˸� ���� ���
		alert("������Ʈ ����!");
		
		// ������Ʈ ���� ��, main.jsp�� �̵�
		location.href="main.jsp";
	</script>

<%
	}else{
%>

	<script type="text/javascript">
		// �˸� ���� ���
		alert("������Ʈ ����!");
		
		// ������Ʈ ���� ��, insert.jsp�� �̵�
		location.href="insert.jsp";
	</script>

<%
	}
%>

</body>
</html>