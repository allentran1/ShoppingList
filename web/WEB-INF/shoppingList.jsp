<%-- 
    Document   : shoppingList
    Created on : 26-Feb-2023, 8:20:40 PM
    Author     : allen
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
        <p>Hello, ${username}</p>
        
        <h1>List</h1>
        
        <form action="ShoppingListServlet" method="post">
            Add Item: <input type="text" name="itemAdd">
            <input type="submit" value="add">
            
            <input type="hidden" name="action" value="add">
        </form>
        
        <form action="ShoppingListServlet" method="post">
            
        </form>
    </body>
</html>
