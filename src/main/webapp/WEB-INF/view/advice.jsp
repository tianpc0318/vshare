<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>home</title>
</head>
<body>
<div style="margin-left: 0; margin-right: 0; margin: auto; width: 800px; height: 200px; border: 1px dashed gray;
	padding: 20px; text-indent: 32px; ">
You should be the top dog in your department and always keep an eye on the outside world.<br />
不要承诺得太多，努力比你的承诺做得更好（Underpromise and overdeliver）
</div>
<div style="margin-left: 0; margin-right: 0; margin: auto; width: 800px; height: 60px; border: 0px dashed gray;
	padding: 20px;">
	用户名称：${uname}<hr />
<!-- <a href="javascript:history.go(-1);">返回</a>-->
<c:if test="${msg != null }">
<span style="color: green">${msg }</span>
<br />
</c:if>
<a href="index.do">返回</a>&nbsp;
<c:if test="${uname != null }">
	<a href="logout.do">退出</a>
</c:if>
<hr />
<h3>根据角色判断</h3>
<shiro:hasRole name="administrator">
我是administrator角色<br />
</shiro:hasRole>
<shiro:hasRole name="common">
我是common角色<br />
</shiro:hasRole>
<h3>根据权限判断</h3>
<shiro:hasPermission name="user:create">
我有user:create权限<br />
</shiro:hasPermission>
<shiro:hasPermission name="user:update">
我有user:update权限<br />
</shiro:hasPermission>
<shiro:hasPermission name="user:delete">
我有user:delete权限<br />
</shiro:hasPermission>
<hr />
<h2 style="color: red; font-weight: bold;">其他标签</h2>
</div>
</body>
</html>