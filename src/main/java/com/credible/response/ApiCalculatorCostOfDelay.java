package com.credible.response;

public class ApiCalculatorCostOfDelay {

    private int status;
    private String status_msg;
    private String msg;

    private Integer invest_now_age;
    private Integer invest_later_age;
    private Integer ending_age;
    private long sip_amount;
    private Double expected_return;

    private Integer years_now;
    private Integer years_later;

    private long invested_now;
    private long invested_later;

    private long final_value_now;
    private long final_value_later;

    private long wealth_now;
    private long wealth_later;

    private long cost_of_delay;

    public int getStatus() { return status; }
    public void setStatus(int status) { this.status = status; }

    public String getStatus_msg() { return status_msg; }
    public void setStatus_msg(String status_msg) { this.status_msg = status_msg; }

    public String getMsg() { return msg; }
    public void setMsg(String msg) { this.msg = msg; }

    public Integer getInvest_now_age() { return invest_now_age; }
    public void setInvest_now_age(Integer invest_now_age) { this.invest_now_age = invest_now_age; }

    public Integer getInvest_later_age() { return invest_later_age; }
    public void setInvest_later_age(Integer invest_later_age) { this.invest_later_age = invest_later_age; }

    public Integer getEnding_age() { return ending_age; }
    public void setEnding_age(Integer ending_age) { this.ending_age = ending_age; }

    public long getSip_amount() { return sip_amount; }
    public void setSip_amount(long sip_amount) { this.sip_amount = sip_amount; }

    public Double getExpected_return() { return expected_return; }
    public void setExpected_return(Double expected_return) { this.expected_return = expected_return; }

    public Integer getYears_now() { return years_now; }
    public void setYears_now(Integer years_now) { this.years_now = years_now; }

    public Integer getYears_later() { return years_later; }
    public void setYears_later(Integer years_later) { this.years_later = years_later; }

    public long getInvested_now() { return invested_now; }
    public void setInvested_now(long invested_now) { this.invested_now = invested_now; }

    public long getInvested_later() { return invested_later; }
    public void setInvested_later(long invested_later) { this.invested_later = invested_later; }

    public long getFinal_value_now() { return final_value_now; }
    public void setFinal_value_now(long final_value_now) { this.final_value_now = final_value_now; }

    public long getFinal_value_later() { return final_value_later; }
    public void setFinal_value_later(long final_value_later) { this.final_value_later = final_value_later; }

    public long getWealth_now() { return wealth_now; }
    public void setWealth_now(long wealth_now) { this.wealth_now = wealth_now; }

    public long getWealth_later() { return wealth_later; }
    public void setWealth_later(long wealth_later) { this.wealth_later = wealth_later; }

    public long getCost_of_delay() { return cost_of_delay; }
    public void setCost_of_delay(long cost_of_delay) { this.cost_of_delay = cost_of_delay; }
}