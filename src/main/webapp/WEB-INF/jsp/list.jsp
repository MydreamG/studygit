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
$(function(){
	$("#ck").click(function(){
		$(".cks").prop("checked",this.checked)
		}
	)
})
function page(cpage) {
	$("[name='cpage']").val(cpage);
	$("form").submit();
}
function ps(){
	if(confirm("确定删除吗?")){
		var a ="";
		$(".cks:checked").each(function(){
			a+=","+$(this).val();
		})
		a=a.substring(1);
		$.post(
			"deleteAll.do",
			{ids:a},
			function(msg){
				alert("删除成功，删除了"+msg+"条数据");
				location='list.do'
			}
		)
	}
}
</script>
</head>
<body>
<form action="list.do" method="post">
<input type="hidden" name="cpage">
电影名称：<input type="text" name="fname" value="${fname }"><br>
<button>提交</button>
</form>
<input type="button" value="批量删除" onclick="ps()"> 
<input type="button" value="添加" onclick="location='toadd.do'"> 
<table>
  <tr>
    <th>全选<input type="checkbox" id="ck"></th>
    <th>电影编号</th>
    <th>电影名称</th>
    <th>电影简述</th>
    <th>电影导演</th>
    <th>发行日期</th>
    <th>电影类型</th>
    <th>操作</th>
  </tr>
  <!-- 列表展示回显 -->
  <c:forEach items="${list }" var="a">
  <tr>
    <td><input type="checkbox" class="cks" value="${a.fid}"></td>
    <td>${a.fid }</td>
    <td>${a.fname }</td>
    <td>${a.js }</td>
    <td>${a.auto }</td>
    <td>${a.dates }</td>
    <td>${a.type }</td>
    <td>
    	<input type="button" value="修改 " onclick="location='toupdate.do?fid=${a.fid}'">
    	<input type="button" value="删除" onclick="ps()">
    </td>
  </tr>
  </c:forEach>
  <tr>
  <!-- 分页 -->
  	<td colspan="7">
  		<input type="button" value="首页" onclick="page(1)">
  		<input type="button" value="上一页" onclick="page('${page.pageNum-1}')">
  		<input type="button" value="下一页" onclick="page('${page.pageNum+1}')">
  		<input type="button" value="尾页" onclick="page('${page.pages}')">
  		
  	</td>
  </tr>
</table>

</body>
</html>