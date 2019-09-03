<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
function tj(){
	$.post(
		"add.do",
		$("form").serialize(),
		function(msg){
			if(msg>0){
				alert("电影保存成功")
				location='list.do';
			}else{
				alert("添加失败,电影表添加出现错误")
			}
		}
	)
}
</script>
</head>
<body>
<form action="">
	电影名称：<input type="text" name="fname"><br><br>
	电影介绍：<input type="text" name="js"><br><br>
	电影导演：<input type="text" name="auto"><br><br>
	发行日期：<input type="text" name="dates"><br><br>
	电影类别：<c:forEach items="${type }" var="t">
		<input type="checkbox" value="${t.tid }" name="tid">${t.tname }
	</c:forEach><br><br>
	<input type="button" value="添加" onclick="tj()">
</form>
</body>
</html>