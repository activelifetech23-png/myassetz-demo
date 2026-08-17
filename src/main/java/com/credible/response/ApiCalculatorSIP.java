package com.credible.response;

import java.util.List;
import java.util.Map;

import com.credible.amfi.model.SchemeMapping;
import com.credible.amfi.model.SchemePerformances;
import com.credible.amfi.model.SchemePerformancesLumpsum;
import com.credible.amfi.response.SwpCalcResponse;


public class ApiCalculatorSIP {
	
	public Integer status;
	public String status_msg;
	public String msg;
    private long sip_amount;
    private Double interest_rate;
    private Integer period;
    private long invested_amount;
    private long growth_value;
    private long maturity_amount;
    
    private long lumpsum_amount;
    private long withdrawal_amount;
    private long total_withdrawal_amount;
    private long total_balance_amount;
    private long total_profit;
    private List<SwpCalcResponse> cash_flow_list;
    private List<SwpCalcResponse> cash_flow_stp;
    private Integer from_scheme_balance_amount;
    private Integer to_scheme_balance_amount;
    private List<SwpCalcResponse> from_scheme_cash_flow_list;
    private List<SwpCalcResponse> to_scheme_cash_flow_list;
    
    private Integer bal_transferor;
    private Integer bal_transferree;
    private Integer trans_amnt;
    
    private Integer tax_amount;
    
    private Integer no_of_transferred;
    
    private long purchase_amount;
    private long sale_amount;
    private String purchase_date;
    private String sale_date;
    private long capital_gain;
    private Double capital_gain_tax_percentage;
    private long capital_gain_tax;
    
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getStatus_msg() {
		return status_msg;
	}
	public void setStatus_msg(String status_msg) {
		this.status_msg = status_msg;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public long getSip_amount() {
		return sip_amount;
	}
	public void setSip_amount(long sip_amount) {
		this.sip_amount = sip_amount;
	}
	public Double getInterest_rate() {
		return interest_rate;
	}
	public void setInterest_rate(Double interest_rate) {
		this.interest_rate = interest_rate;
	}
	public Integer getPeriod() {
		return period;
	}
	public void setPeriod(Integer period) {
		this.period = period;
	}
	public long getInvested_amount() {
		return invested_amount;
	}
	public void setInvested_amount(long invested_amount) {
		this.invested_amount = invested_amount;
	}
	public long getGrowth_value() {
		return growth_value;
	}
	public void setGrowth_value(long growth_value) {
		this.growth_value = growth_value;
	}
	public long getMaturity_amount() {
		return maturity_amount;
	}
	public void setMaturity_amount(long maturity_amount) {
		this.maturity_amount = maturity_amount;
	}
	public long getLumpsum_amount() {
		return lumpsum_amount;
	}
	public void setLumpsum_amount(long lumpsum_amount) {
		this.lumpsum_amount = lumpsum_amount;
	}
	public long getWithdrawal_amount() {
		return withdrawal_amount;
	}
	public void setWithdrawal_amount(long withdrawal_amount) {
		this.withdrawal_amount = withdrawal_amount;
	}
	public long getTotal_withdrawal_amount() {
		return total_withdrawal_amount;
	}
	public void setTotal_withdrawal_amount(long total_withdrawal_amount) {
		this.total_withdrawal_amount = total_withdrawal_amount;
	}
	public long getTotal_balance_amount() {
		return total_balance_amount;
	}
	public void setTotal_balance_amount(long total_balance_amount) {
		this.total_balance_amount = total_balance_amount;
	}
	public long getTotal_profit() {
		return total_profit;
	}
	public void setTotal_profit(long total_profit) {
		this.total_profit = total_profit;
	}
	public List<SwpCalcResponse> getCash_flow_list() {
		return cash_flow_list;
	}
	public void setCash_flow_list(List<SwpCalcResponse> cash_flow_list) {
		this.cash_flow_list = cash_flow_list;
	}
	public List<SwpCalcResponse> getCash_flow_stp() {
		return cash_flow_stp;
	}
	public void setCash_flow_stp(List<SwpCalcResponse> cash_flow_stp) {
		this.cash_flow_stp = cash_flow_stp;
	}
	public Integer getBal_transferor() {
		return bal_transferor;
	}
	public void setBal_transferor(Integer bal_transferor) {
		this.bal_transferor = bal_transferor;
	}
	public Integer getBal_transferree() {
		return bal_transferree;
	}
	public void setBal_transferree(Integer bal_transferree) {
		this.bal_transferree = bal_transferree;
	}
	public Integer getTrans_amnt() {
		return trans_amnt;
	}
	public void setTrans_amnt(Integer trans_amnt) {
		this.trans_amnt = trans_amnt;
	}
	public Integer getFrom_scheme_balance_amount() {
		return from_scheme_balance_amount;
	}
	public void setFrom_scheme_balance_amount(Integer from_scheme_balance_amount) {
		this.from_scheme_balance_amount = from_scheme_balance_amount;
	}
	public Integer getTo_scheme_balance_amount() {
		return to_scheme_balance_amount;
	}
	public void setTo_scheme_balance_amount(Integer to_scheme_balance_amount) {
		this.to_scheme_balance_amount = to_scheme_balance_amount;
	}
	public List<SwpCalcResponse> getFrom_scheme_cash_flow_list() {
		return from_scheme_cash_flow_list;
	}
	public void setFrom_scheme_cash_flow_list(List<SwpCalcResponse> from_scheme_cash_flow_list) {
		this.from_scheme_cash_flow_list = from_scheme_cash_flow_list;
	}
	public List<SwpCalcResponse> getTo_scheme_cash_flow_list() {
		return to_scheme_cash_flow_list;
	}
	public void setTo_scheme_cash_flow_list(List<SwpCalcResponse> to_scheme_cash_flow_list) {
		this.to_scheme_cash_flow_list = to_scheme_cash_flow_list;
	}
	public Integer getTax_amount() {
		return tax_amount;
	}
	public void setTax_amount(Integer tax_amount) {
		this.tax_amount = tax_amount;
	}
	public Integer getNo_of_transferred() {
		return no_of_transferred;
	}
	public void setNo_of_transferred(Integer no_of_transferred) {
		this.no_of_transferred = no_of_transferred;
	}
	public long getPurchase_amount() {
		return purchase_amount;
	}
	public void setPurchase_amount(long purchase_amount) {
		this.purchase_amount = purchase_amount;
	}
	public long getSale_amount() {
		return sale_amount;
	}
	public void setSale_amount(long sale_amount) {
		this.sale_amount = sale_amount;
	}
	public String getPurchase_date() {
		return purchase_date;
	}
	public void setPurchase_date(String purchase_date) {
		this.purchase_date = purchase_date;
	}
	public String getSale_date() {
		return sale_date;
	}
	public void setSale_date(String sale_date) {
		this.sale_date = sale_date;
	}
	public long getCapital_gain() {
		return capital_gain;
	}
	public void setCapital_gain(long capital_gain) {
		this.capital_gain = capital_gain;
	}
	public Double getCapital_gain_tax_percentage() {
		return capital_gain_tax_percentage;
	}
	public void setCapital_gain_tax_percentage(Double capital_gain_tax_percentage) {
		this.capital_gain_tax_percentage = capital_gain_tax_percentage;
	}
	public long getCapital_gain_tax() {
		return capital_gain_tax;
	}
	public void setCapital_gain_tax(long capital_gain_tax) {
		this.capital_gain_tax = capital_gain_tax;
	}
}