package com.ofd.dao;

import com.ofd.model.Transaction;
import com.ofd.util.DBConnection;

import java.sql.*;

public class TransactionDAO {
	public static long saveTransaction(Transaction t) throws Exception {
		
		String sql = "INSERT INTO transactions (user_id, card_number, amount, currency, country, ip_address, fraud_score, decision) VALUES (?,?,?,?,?,?,?,?)";
		
		try (Connection con = DBConnection.getConnection()) {
			
			PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			
			ps.setInt(1, t.getUserId());
			ps.setString(2, t.getCardNumber());
			ps.setDouble(3, t.getAmount());
			ps.setString(4, t.getCurrency());
			ps.setString(5, t.getCountry());
			ps.setString(6, t.getIpAddress());
			ps.setInt(7, t.getFraudScore());
			ps.setString(8, t.getDecision());
			ps.executeUpdate();
			
			ResultSet rs = ps.getGeneratedKeys();
			long id = 0;
			
			if (rs.next()) id = rs.getLong(1);
			rs.close(); ps.close();
			return id;
			}
		}
	}