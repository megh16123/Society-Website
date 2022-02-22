package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Member;
import com.helper.FactoryProvider;

import jakarta.servlet.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class LoginAuth extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;

    public LoginAuth() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		String username = 	request.getParameter("username");
		String password = request.getParameter("password");
		Member m = null;
	    Session s =   FactoryProvider.getFactory().openSession();
	    Transaction tx = s.beginTransaction();
	    m = (Member)s.createQuery("FROM Member M WHERE M.username= :username").setParameter("username",username).uniqueResult();
	    response.setContentType("text/html");
    	PrintWriter out = response.getWriter();
	    s.close();
	    if(m!=null&&m.getPassword().equals(password)) {
	    	HttpSession sess = request.getSession();
	    	sess.setAttribute("username",m.getUsername());
	    	sess.setAttribute("firstname",m.getFirstName());
	    	sess.setAttribute("lastname", m.getLastName());
	    	sess.setAttribute("id",m.getId());
	    	sess.setAttribute("block", m.getBlock());
	    	response.sendRedirect("index.jsp");
	    }else {
	    	out.println("<h1>No Success</h1>");
	    }
	    tx.commit();
	    
		}catch(Exception e) {
			e.printStackTrace();
		}
	
	}

}
