package com.org.servlet;

import java.io.IOException;
import java.net.URLDecoder;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import com.org.javabean.User;
/**
 * Servlet implementation class admin
 */
@WebServlet("/adminServlet")
public class adminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub	
	response.setContentType("application/json;charset=utf-8");
	response.setHeader("Content-type", "text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();  
        String name = new String(request.getParameter("name").getBytes("ISO8859-1"), "UTF-8");
        String age=request.getParameter("age");
        System.out.println(name+age);
        out.flush();  
        out.close();  
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stu
		doGet(request,response);
	}

}
