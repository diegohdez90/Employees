<%-- 
    Document   : empUpdate
    Created on : 25/01/2016, 10:58:36 AM
    Author     : Veotek
--%>
<%@page import="org.project.Employee"%>
<%@page import="org.project.EmployeeBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header.jsp"%>
        <%
            int id = Integer.parseInt(request.getParameter("updateId"));
            EmployeeBean eb = new EmployeeBean();
            Employee e = eb.getEmployee(id);
        %>
        <div id="mystyle" class="myform">
            <form id="form" name="form" action="UpdateServlet" method="post">
                <h1>Update Employee ID:<%=e.getId()%></h1>
                <p>Modify the following information to update employee ID:<%=e.getId()%></p>
                <label><input type="hidden" name="empId" id="empId" value="<%=e.getId()%>"/><span class="small"></span></label>                    
                <label>Name<span class="small">Enter name</span></label>
                <input type="text" name="empName" id="empName" value="<%=e.getName()%>"/>
                <label>Phone<span class="small">Enter phone number</span></label>
                <input type="text" name="phone" id="phone" value="<%=e.getPhone()%>"/>
                <label>Email<span class="small">Enter email address</span></label>
                <input type="text" name="email" id="email" value="<%=e.getEmail()%>"/>
                <label>Salary<span class="small">Enter salary</span></label>
                <input type="text" name="salary" id="salary" value="<%=e.getSalary()%>"/>
                <label>Designation<span class="small">Enter designation</span></label>
                <input type="text" name="designation" id="designation" value="<%=e.getArea()%>"/>                           
                <button type="submit">Update Employee</button>
                <div class="spacer"></div>
            </form>
        </div>   
    </body>
</html>
