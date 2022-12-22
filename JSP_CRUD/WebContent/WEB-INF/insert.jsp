<!-- 

// 프로그램 파일명: insert.jsp, 작성일: 20221222, 최종 마감시간: 20시 10분
// 설명: insert 화면

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

	<h3>정보 등록</h3>

	<!-- 해당 정보들을 입력하고 입력 버튼을 누르면 insert_alert.jsp 페이지로 이동 -->
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
					<input type="submit" value="입력">
					<!-- 입력 취소 시, main.jsp로 이동 -->
					<input type="button" value="취소" onclick="location.href='main.jsp'">
				</td>

		</table>
	
	
	</form>

</body>
</html>