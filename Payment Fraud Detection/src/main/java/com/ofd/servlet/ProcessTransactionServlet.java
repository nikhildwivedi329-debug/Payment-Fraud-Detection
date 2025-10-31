package com.ofd.servlet;


import com.ofd.model.Transaction;
import com.ofd.util.FraudEngine;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.ofd.dao.TransactionDAO;


import java.io.IOException;



@WebServlet("/ProcessTransactionServlet")


public class ProcessTransactionServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			Transaction t = new Transaction();
			t.setUserId(Integer.parseInt(req.getParameter("userId")));
			t.setCardNumber(req.getParameter("cardNumber"));
			t.setAmount(Double.parseDouble(req.getParameter("amount")));
			t.setCurrency(req.getParameter("currency"));
			t.setCountry(req.getParameter("country"));
			t.setIpAddress(req.getRemoteAddr());


			int score = FraudEngine.score(t);
			
			String decision = FraudEngine.decisionFromScore(score);
			t.setFraudScore(score);
			t.setDecision(decision);


			long id = TransactionDAO.saveTransaction(t);
			
			req.setAttribute("transactionId", id);
			req.setAttribute("score", score);
			req.setAttribute("decision", decision);

			resp.sendRedirect("admin/dashboard.jsp");
			req.getRequestDispatcher("result.jsp").forward(req, resp);
			
			}
		
		catch (Exception e) {
			
			throw new ServletException(e);
			
				}
		}
	}