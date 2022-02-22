package com.servlets;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;
import com.entities.GymSlots;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class GymSlotBook
 */
public class GymSlotBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GymSlotBook() {
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
		try {
			
		Session s = FactoryProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
		HttpSession sess = request.getSession();
		int id = (Integer)sess.getAttribute("id");
		if("morning1".equals(slot)) {
			s.save(new GymSlots(id,true,false,false,false,false));
		}else if("morning2".equals(slot)) {
			s.save(new GymSlots(id,false,true,false,false,false));
		}else if("evening1".equals(slot)) {
			s.save(new GymSlots(id,false,false,true,false,false));
		}else if("evening2".equals(slot)) {
			s.save(new GymSlots(id,false,false,false,true,false));
		}else if("evening3".equals(slot)) {
			s.save(new GymSlots(id,false,false,false,false,true));
		}
		tx.commit();
		s.close();
		response.sendRedirect("gym.jsp");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
