package com.servlets;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;



import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Feed;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddFeed
 */
public class AddFeed extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFeed() {
        super();
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
		// TODO Auto-generated method stub
		try {
			String feedback = request.getParameter("feedback");
			Session s =   FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			System.out.println(feedback);
			s.save(new Feed(feedback));
			tx.commit();
			s.close();
			response.sendRedirect("feedback.jsp");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
