<%-- 
    Document   : shoppinglist
    Created on : Jun 27, 2021, 10:37:54 AM
    Author     : 671749
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <p>Hello ${username}</p>
        <p><a herf="ShoppingList?action=logout">Logout</a></p>
        <form action="" method="POST">
            <h2>Add Item</h2>
            <input type="text" name="item"><input type="submit" value="add">
            <input type="hidden" name="action" value="add">
        </form>
            
        <form action="" method="POST">
            <ul>
                <c:forEach items="${itemList}" var="item">
                <li>
                    <input type="radio" name="itemRadio" value="${item}">
                    ${item}
                </li>
            </c:forEach>
            </ul>
            <input type="submit" value="Delete">
            <input type="hidden" name="action" value="delete">   
        </form>
    </body>
</html>
