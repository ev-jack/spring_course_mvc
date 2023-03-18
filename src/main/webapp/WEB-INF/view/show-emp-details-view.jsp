<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

    <h2>Dear Employee, you are WELCOME!!!</h2>
    <br>
    <br>
    <br>

<%--    <h2>Your name: ${param.employeeName}</h2>--%>

    <h2>Your name: ${employee.name}</h2>
    <h2>Your surname: ${employee.surName}</h2>
    <h2>Your salary: ${employee.salary}</h2>
    <h2>Your department: ${employee.department}</h2>
    <h2>Your car: ${employee.carBrand}</h2>
    <h2>
        Language(s):
        <ul>
            <c:forEach var="lang" items="${employee.languages}">
                <li>${lang}</li>
            </c:forEach>
        </ul>
    </h2>
    <h2>Phone number: ${employee.phoneNumber}</h2>
    <h2>Email: ${employee.email}</h2>


</body>
</html>