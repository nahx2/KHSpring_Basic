<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹서버에서 쿠키 생성하기</title>
</head>
<body>
<%
	Cookie cook1 = new Cookie("notebook","갤럭시9");
	cook1.setMaxAge(60);
	// 생성자는 메소드 오버로딩 - 같은이름의 생성자 여러개 가능함
	//Cookie cook2 = new Cookie("age",30);
	//Cookie cook2 = new Cookie("age",new Integer(30));
	Cookie cook2 = new Cookie("age",String.valueOf(30));
	List<String> names = new ArrayList<>();
	//cook2 = new Cookie("names", names);
	session.setAttribute("s_age",30);
	session.setAttribute("s_name",names);
	cook2.setMaxAge(60);
	cook2.setPath("/");
	Cookie cook3 = new Cookie("coffee","콜드브루");
	cook3.setMaxAge(60);
	response.addCookie(cook1);
	response.addCookie(cook2);
	response.addCookie(cook3);
%>

</body>
</html>