<%-- 
    Document   : header
    Created on : 25/01/2016, 10:54:52 AM
    Author     : Veotek
--%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <div id="mystyle" style="border: none;">
            <h1>JDBC, JSP, Servlet Tutorial</h1>
            <p><a href="http://www.developer.com">http://www.developer.com</a><br/>
                <b>Creating Data centric Application with JSP Servlet</b><br/>
                <%=new Date()%></br>  </br>
                <a href="empAddNew.jsp">Add New Employee</a> &NegativeThickSpace; |
                <a href="empView.jsp">View Employee</a>
            </p>
        </div>
    </center>
</html>
