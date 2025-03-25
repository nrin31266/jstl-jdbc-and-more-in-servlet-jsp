<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fun" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>CORE TAG</h4>
	${name} 
	<br>
	
	<c:out value="Hello"></c:out>
	<c:out value="${name}"></c:out>
	<br>
	<!-- <c:import url="http://google.com"></c:import> -->
	
	${student }
	
	<br>
	
	${students }
	
	<br>
	
	<div style="padding: 8px; border: 1px solid red">
		<c:forEach items="${students }" var="s">
			${s } <br>
		</c:forEach>
	</div>
	
	<br>
	<h4>SQL TAG</h4>
	<sql:setDataSource password="root" user="root" var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/servlet-jdbc"/>
	<sql:query var="rs" dataSource="${db }" >SELECT * FROM phone</sql:query>
	<div style="display: flex; flex-direction: column; gap: 12px">
		<c:forEach items="${rs.rows}" var="phone">
			<div style="padding: 8px; border: 1px solid green">
				<c:out value="${phone.name }"></c:out> <br>
				<c:out value="${phone.price }"></c:out>
			</div>
		</c:forEach>
	</div>
	<br>
	<h4>FUN TAG</h4>
	
	
	<c:set var="str" value="Van Rin is a Java Trainer"></c:set>
	<c:out value="${str }"></c:out>
	<c:forEach items="${fun:split(str, ' ')}" var="item">
	    ${item } <br>
	</c:forEach>
	<div><span style="color: orange">
		index 'is': ${fun:indexOf(str, "is")}
	</span></div>
	<div><span style="color: purple;">
		is there: ${fun:contains(str, "Javas")}
	</span></div>
	<div>
		<c:if test="${fun:endsWith(str, 'Trainer') }">
			Yes
		</c:if>
	</div>
	
</body>
</html>