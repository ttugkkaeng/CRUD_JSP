<!-- 

// 프로그램 파일명: browser.jsp, 작성일: 20221222, 최종 마감시간: 20시 10분
// 설명: 브라우저 실행 시 연결 해 줄 main.jsp 설정

 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Browser</title>
</head>
<body>

	<!-- 브라우저 실행 시 연결 해 줄 main.jsp -->
	<jsp:forward page="main.jsp"></jsp:forward>

</body>
</html>