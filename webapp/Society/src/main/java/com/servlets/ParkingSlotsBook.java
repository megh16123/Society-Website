package com.servlets;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.helper.FactoryProvider;
import com.entities.ParkingSpace;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class ParkingSlotsBook
 */
public class ParkingSlotsBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ParkingSlotsBook() {
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
		String slot = request.getParameter("slot");
		Session s = FactoryProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
		HttpSession sess = request.getSession();
		int id = (Integer)sess.getAttribute("id");
		s.save(new ParkingSpace(id,slot));
		tx.commit();
		s.close();
		response.sendRedirect("parking.jsp");
	}

}
