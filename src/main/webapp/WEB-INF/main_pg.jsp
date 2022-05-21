<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html xmlns:th="http://www.thymeleaf.org" lang="en">
<%--th:align="center"--%>
<%--th:insert="frg::search"--%>
<head>
    <meta charset="UTF-8">
    <title>Main</title>
</head>

<body style="margin-top: 100px; margin-left: 300px">

<h1>Login</h1>

<form:form action="/login" modelAttribute="User">
    Name_________<form:input path="name"/><br><br>
    Password_____<form:input path="pass"/><br><br>
    <button type="submit">Login</button>
    <button><a href="/sign_up">Sign Up</a></button>
</form:form>

</body>
</html>