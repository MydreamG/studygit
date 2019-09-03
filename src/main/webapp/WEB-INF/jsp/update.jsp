<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
function xg(){
	$.post(
		"update.do",
		$("form").serialize(),
		function(msg){
			if(msg>0){
				alert("电影修改成功")
				location='list.do';
			}else{
				alert("修改失败,电影表修改出现错误")
			}
		}
	)
}
</script>
</head>
<body>
<form action="">
	<input type="hidden" name="fid" value="${f.fid }">
	电影名称：<input type="text" name="fname" value="${f.fname }"><br><br>
	电影介绍：<input type="text" name="js" value="${f.js }"><br><br>
	电影导演：<input type="text" name="auto" value="${f.auto }"><br><br>
	发行日期：<input type="text" name="dates" value="${f.dates }"><br><br>
	电影类别：<c:forEach items="${type }" var="t">
		<input type="checkbox" name="tid" value="${t.tid }" <c:if test="${fn:contains(f.type,t.tname) }">checked</c:if>  >${t.tname }
	</c:forEach><br><br>
	<input type="button" value="修改" onclick="xg()">
</form>
</body>
</html>