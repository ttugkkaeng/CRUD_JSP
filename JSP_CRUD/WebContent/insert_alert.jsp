<!-- 

// ���α׷� ���ϸ�: insert_alert.jsp, �ۼ���: 20221222, ���� �����ð�: 20�� 10��
// ����: insert_alert ȭ��

 -->

<%@page import="com.db.dao.LibDao"%>
<%@page import="com.db.dto.LibDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%

	// insert.jsp���� �Է��� name ���� ���� ������ �޾ƿ���
	String lib_name = request.getParameter("lib_name");
	String lib_code = request.getParameter("lib_code");
	String ad_name = request.getParameter("ad_name");
	String address = request.getParameter("address");
	String phone = request.getParameter("phone");
	String url = request.getParameter("url");

	// LibDto ��ü ����
	LibDto dto = new LibDto();

	// �Էµ� ���� ����
	dto.setLib_name(lib_name);
	dto.setLib_code(lib_code);
	dto.setAd_name(ad_name);
	dto.setAddress(address);
	dto.setPhone(phone);
	dto.setUrl(url);
	
	
	
	// LibDao ��ü ����
	LibDao dao = new LibDao();
	
	// dao�� insert(dto) �޼ҵ带 ����Ͽ� ȭ�� ����
	Boolean res = dao.insert(dto);
	
	
	if(res){
%>

	<script type="text/javascript">
		
		// �˸� ���� ���
		alert("��� ����!");
		
		// ��� ���� ��, main.jsp�� �̵�
		location.href="main.jsp";
	</script>

<%
	}else{
%>

	<script type="text/javascript">
		// �˸� ���� ���
		alert("��� ����!");
		
		// ��� ���� ��, insert.jsp�� �̵�
		location.href="insert.jsp";
	</script>

<%
	}
%>


</body>
</html>