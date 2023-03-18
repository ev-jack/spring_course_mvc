<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

    <h2>Dear Employee, Please enter your details</h2>
    <br>

    <form:form action="showDetails" modelAttribute="employee" method="post">

        Name <form:input path="name"/>
        <form:errors path="name"/>
        <br><br>
        Surname <form:input path="surName"/>
        <form:errors path="surName"/>
        <br><br>
        Salary <form:input path="salary"/>
        <form:errors path="salary"/>
        <br><br>
        Department <form:select path="department">
        <form:options items="${employee.departments}"/>
        </form:select>
        <br><br>
        Which car do you want?
        <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
        <br><br>
        Foreign language(s):
        <form:checkboxes path="languages" items="${employee.languageList}"/>
        <br><br>
        Phone number <form:input path="phoneNumber"/>
        <form:errors path="phoneNumber"/>
        <br><br>
        Email <form:input path="email"/>
        <form:errors path="email"/>
        <br><br>

        <br><br>
        <input type="submit" value="OK">

    </form:form>



</body>
</html>