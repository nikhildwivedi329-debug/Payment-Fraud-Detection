package com.ofd.util;


import com.ofd.model.Transaction;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class FraudEngine {
	public static int score(Transaction t) {
		
		int score = 0;

		if (t.getAmount() > 1000) score += 40; 
		else if (t.getAmount() > 500) score += 20;


		if (t.getCountry() != null && (t.getCountry().equalsIgnoreCase("Nigeria") || t.getCountry().equalsIgnoreCase("Russia"))) { 
			score += 20;
			}


		try (Connection con = DBConnection.getConnection()) {
			
			PreparedStatement ps = con.prepareStatement("SELECT id FROM blacklist_cards WHERE card_number = ?");
			ps.setString(1, t.getCardNumber());
			ResultSet rs = ps.executeQuery();
			
			if (rs.next()) score += 100;
			rs.close(); ps.close();
			}
		
		catch (Exception e) {
				
			}

		return score;
		
	}


	public static String decisionFromScore(int score) {
		
		if (score >= 80) return "REJECT";
		if (score >= 50) return "REVIEW";
		return "APPROVE";
		
	}
	}