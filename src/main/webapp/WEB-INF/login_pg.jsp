<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>

<body style="margin-top: 100px; margin-left: 300px">

<h1>Sign up success</h1>

<br><br><br><br>

Your name is ${User.name}
<br>
born in ${User.age}
<br>
you are a ${User.sex}
<br>
married ${User.married}

<br><br><br>

<a href="/">back</a>

</body>
</html>
