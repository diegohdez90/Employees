<%-- 
    Document   : empView
    Created on : 25/01/2016, 11:04:45 AM
    Author     : Veotek
--%>
<%@page import="org.project.EmployeeBean"%>
<%@page import="org.project.Employee"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header.jsp"%>
        <div>
            <table>
                <thead>
                    <tr>
                        <th>Emp ID</th>
                        <th>Name</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Salary</th>
                        <th>Designation</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        EmployeeBean eb = new EmployeeBean();
                        List<Employee> list = eb.getEmployess();
                        for (Employee e : list) {
                    %>
 
                    <tr>
                        <td><%=String.valueOf(e.getId())%></td>
                        <td><%=e.getName()%></td>
                        <td><%=e.getPhone()%></td>
                        <td><a href="mailto:<%=e.getEmail()%>"><%=e.getEmail()%></a></td>
                        <td><%=String.valueOf(e.getSalary())%></td>
                        <td><%=e.getArea()%></td>
                        <td style="border: none;">
                            <div>
                                <form method="post" action="empUpdate.jsp">
                                    <input type="hidden" id="updateId" name="updateId" value="<%=String.valueOf(e.getId())%>"/> 
                                    <input type="submit" value="Modify..."/> 
                                </form>
                            </div>
                        </td>
                        <td style="border: none;">
                            <div>
                                <form method="post" action="DeleteServlet">
                                    <input type="hidden" id="delId" name="delId" value="<%=String.valueOf(e.getId())%>"/> 
                                    <input type="submit" value="Delete"/> 
                                </form>
                            </div>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>
    </body>
</html>
