<!-- 

// 프로그램 파일명: insert_alert.jsp, 작성일: 20221222, 최종 마감시간: 20시 10분
// 설명: insert_alert 화면

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

	// insert.jsp에서 입력한 name 값들 각각 변수로 받아오기
	String lib_name = request.getParameter("lib_name");
	String lib_code = request.getParameter("lib_code");
	String ad_name = request.getParameter("ad_name");
	String address = request.getParameter("address");
	String phone = request.getParameter("phone");
	String url = request.getParameter("url");

	// LibDto 객체 생성
	LibDto dto = new LibDto();

	// 입력된 값들 셋팅
	dto.setLib_name(lib_name);
	dto.setLib_code(lib_code);
	dto.setAd_name(ad_name);
	dto.setAddress(address);
	dto.setPhone(phone);
	dto.setUrl(url);
	
	
	
	// LibDao 객체 생성
	LibDao dao = new LibDao();
	
	// dao의 insert(dto) 메소드를 사용하여 화면 구현
	Boolean res = dao.insert(dto);
	
	
	if(res){
%>

	<script type="text/javascript">
		
		// 알림 문구 출력
		alert("등록 성공!");
		
		// 등록 실패 시, main.jsp로 이동
		location.href="main.jsp";
	</script>

<%
	}else{
%>

	<script type="text/javascript">
		// 알림 문구 출력
		alert("등록 실패!");
		
		// 등록 실패 시, insert.jsp로 이동
		location.href="insert.jsp";
	</script>

<%
	}
%>


</body>
</html>