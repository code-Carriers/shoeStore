<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'query_user.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		.container{	
			  		font-size: 22px;			
		}
		.h{ font-style: italic;
			color: blue;
			font-size: 20px;
		}
		table{ width:600px;
			   text-align:center;
			   border-color: green; 
			   font-size: 32px;
			   border-collapse: collapse;			   
		}
	</style>
  </head>
  
  <body>
    <jsp:include page="header.jsp"></jsp:include>
    <jsp:include page="navigation.jsp"></jsp:include>
    <div class="container">
    	<div><p class="h">鞋子/女鞋</p></div>
    	<div align="center">
    	<table border="2">
    		<tr>
    			<td>图片</td>
    			<td>商品名称</td>
    			<td>价格</td>
    			<td>品牌</td>
    			<td>操作</td>
    		</tr>
    		<s:iterator value="#session.womenshoe" var="womenshoe">
    			<tr>
    				<td><img src="images/<s:property value="#womenshoe.picture"/> " alt=""/></td>
    				<td><s:property value="#womenshoe.shoename"/> </td>
    				<td><s:property value="#womenshoe.price"/></td>
    				<td><s:property value="#womenshoe.brands"/></td>
    				<td><a href="delete_womenshoe.action?sid=<s:property value="#womenshoe.sid"/>">
    						<button>删除</button> 
    					</a></td>
    			</tr>
    		</s:iterator>
    	</table>
    	</div>
    </div>
  </body>
</html>
