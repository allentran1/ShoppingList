<%-- 
    Document   : shoppingList
    Created on : 26-Feb-2023, 8:20:40 PM
    Author     : allen
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <p>Hello, ${username}</p>
        
        <h1>List</h1>
        
        <form action="ShoppingListServlet" method="post">
            Add Item: <input type="text" name="itemAdd">
            <input type="submit" value="add">
            
            <input type="hidden" name="action" value="add">
        </form>
        
        <form action="ShoppingListServlet" method="post">
            <c:forEach items="${itemList}" var="item">
                <label>
                    <input type="radio" name="itemDelete" value="${itemList}">
                    
                    <br>
                    
                </label>
                
            </c:forEach>
            
            <c:if test="${itemList.size() > 0}">
                <input type="submit" value="delete">
                
                <input type="hidden" name="action" value="delete">
                
            </c:if>
        </form>
    </body>
</html>
