<%-- 
    Document   : login
    Created on : 8 avr. 2023, 04 h 12 min 39 s
    Author     : isi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%@include file="head.jsp" %>
    </head>
    <body>
        <%@include file="header.jsp" %>
        
        <h1>Login!</h1>
        <form method="POST" action="Login">
         <div> 
         <label for="uname"><b>Username</b></label>
         <input type="text" placeholder="Entrer Username" name="uname" required>
         </div> 
         <div> 
         <label for="psw"><b>Password</b></label>
         <input type="password" placeholder="Entrer Password" name="psw" required>
         </div>
         <button type="submit">Login</button>
        </form>
        
        <%@include file="footer.jsp" %>
    </body>
</html>
