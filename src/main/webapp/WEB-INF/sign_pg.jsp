<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
</head>

<body style="margin-top: 100px; margin-left: 300px">

<h1>Sign Up</h1>

<br><br><br><br>
<%--cssStyle="text-decoration-color: red"--%>
<%--@elvariable id="User" type=""--%>
<form:form action="/login" modelAttribute="User">
    Name_________<form:input path="name"/>
    <form:errors path="name" />
    <br><br>

    Age__________<form:select path="age">
            <form:options items="${User.ages}"/>
        </form:select><br><br>

    Sex__________<form:radiobuttons path="sex" items="${User.sexes}"/> <br><br>

    Married______<form:checkbox path="married"/>  <br><br>

    Password_____<form:input path="pass"/>  <br><br>

    <input type="submit" value="Sign Up"/>
    <button type="reset">Clear</button>
    <br><br>
</form:form>

<br><br><br>

<a href="/">back</a>

</body>
</html>