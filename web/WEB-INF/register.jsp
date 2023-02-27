<%-- 
    Document   : register
    Created on : 26-Feb-2023, 8:20:25 PM
    Author     : allen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        
        <form action="ShoppingListServlet" method="post">
            Username: <input type="text" name="username">
            
            <input type="submit" value="Register Name">
            
            <input type="hidden" name="actopm" value="register">
        </form>
            
    </body>
</html>
