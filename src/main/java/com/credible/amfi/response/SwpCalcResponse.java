package com.credible.amfi.response;

public class SwpCalcResponse {

	private Long balance_amt;
	private Long withdrawal_amt;
	private Long interest_earned;
	private Long month_end_balance;
	
	
	public Long getBalance_amt() {
		return balance_amt;
	}
	public void setBalance_amt(Long balance_amt) {
		this.balance_amt = balance_amt;
	}
	public Long getWithdrawal_amt() {
		return withdrawal_amt;
	}
	public void setWithdrawal_amt(Long withdrawal_amt) {
		this.withdrawal_amt = withdrawal_amt;
	}
	public Long getInterest_earned() {
		return interest_earned;
	}
	public void setInterest_earned(Long interest_earned) {
		this.interest_earned = interest_earned;
	}
	public Long getMonth_end_balance() {
		return month_end_balance;
	}
	public void setMonth_end_balance(Long month_end_balance) {
		this.month_end_balance = month_end_balance;
	}
}