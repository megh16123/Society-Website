package com.servlets;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;



import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.SecretTherapy;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SecretTherapySlotBook
 */
public class SecretTherapySlotBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SecretTherapySlotBook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SecretTherapy therapy;
		Session s = FactoryProvider.getFactory().openSession();
		int slot = Integer.parseInt(request.getParameter("slot"));
		Transaction tx = s.beginTransaction();
		therapy = s.get(SecretTherapy.class,1);
			if(slot==1) {
				therapy.setSlot1(true);
			}else if(slot==2) {
				therapy.setSlot2(true);
			}else if(slot==3) {
				therapy.setSlot3(true);
			}else if(slot==4) {
				therapy.setSlot4(true);
			}else if(slot==5) {
				therapy.setSlot5(true);
			}else if(slot==6) {
				therapy.setSlot6(true);
			}else if(slot==7) {
				therapy.setSlot7(true);
			}else if(slot==8) {
				therapy.setSlot8(true);
			}else if(slot==9) {
				therapy.setSlot9(true);
			}else if(slot==10) {
				therapy.setSlot10(true);
			}
			s.update(therapy);
	
		tx.commit();
		s.close();
		response.sendRedirect("therapy.jsp");
	}

}
