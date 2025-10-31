package com.ofd.model;

import java.util.Date;

public class Transaction {
	
	private long id;
	private int userId;
	private String cardNumber;
	private double amount;
	private String currency;
	private String country;
	private String ipAddress;
	private Date timestamp;
	private int fraudScore;
	private String decision;
	
	public long getId() { 
		return id; 
		}
	
	public void setId(long id) { 
		this.id = id; 
		}
	
	public int getUserId() { 
		return userId; 
		}
	
	public void setUserId(int userId) { 
		this.userId = userId; 
		}
	
	public String getCardNumber() { 
		return cardNumber; 
		}
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber; 
		}
	
	public double getAmount() {
		return amount; 
		}

	
	public void setAmount(double amount) {
		this.amount = amount;
		}
	public String getCurrency() { 
		return currency; 
		}
	public void setCurrency(String currency) { 
		this.currency = currency; 
		}

	public String getCountry() { 
		return country; 
		}
	public void setCountry(String country) { 
		this.country = country; 
		}

	public String getIpAddress() { 
		return ipAddress;
		}

	public void setIpAddress(String ipAddress) { 
		this.ipAddress = ipAddress; 
		}

	public Date getTimestamp() { 
		return timestamp; 
		}

	public void setTimestamp(Date timestamp) { 
		this.timestamp = timestamp;
		}

	public int getFraudScore() {
		return fraudScore; 
		}

	public void setFraudScore(int fraudScore) { 
		this.fraudScore =fraudScore; 
		}

	public String getDecision() { 
		return decision;
		}

	public void setDecision(String decision) { 
		this.decision = decision; 
		}

}