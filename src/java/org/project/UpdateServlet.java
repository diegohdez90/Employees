/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.project;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Veotek
 */
@WebServlet(name = "UpdateServlet", urlPatterns = {"/UpdateServlet"})
public class UpdateServlet extends HttpServlet{
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
 
       @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
 
     @Override
    public String getServletInfo() {
        return "Short description";
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        Employee emp = new Employee();
        emp.setId(Integer.parseInt(request.getParameter("empId")));
        emp.setName(request.getParameter("empName"));
        emp.setPhone(request.getParameter("phone"));
        emp.setEmail(request.getParameter("email"));
        emp.setArea(request.getParameter("designation"));
        emp.setSalary(Float.parseFloat(request.getParameter("salary")));
        EmployeeBean eb = new EmployeeBean();
        eb.update(emp);
        response.sendRedirect("empView.jsp");
    }
    
    
    
}
