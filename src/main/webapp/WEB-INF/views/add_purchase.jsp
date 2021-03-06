<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>add_purchase</title>
</head>
<body onload="createSelectInput()">
<a href="home">home</a>
<div>
    <p>
        <form:errors path="purchase.*"/>
    </p>
</div>

<form:form modelAttribute="purchase" action="purchase_added">
    <div>
        select product :<form:select path="productName" items="${products}"/>
    </div>

    <div>
        enter quantity : <input type="text" name="quantity"/></div>
    <div>
        enter date(dd.mm.yyyy) : <input type="text" name="purchaseDate"/>
    </div>
    <input type="submit" value="Add purchase">
</form:form>

</body>

</html>
