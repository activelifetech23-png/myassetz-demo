package com.credible.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.internal.util.StringHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.credible.amfi.response.ApiCalculatorCompositePlanner;
import com.credible.amfi.response.ApiCalculatorEducationPlanner;
import com.credible.amfi.response.ApiCalculatorNetworth;
import com.credible.amfi.response.SwpCalcResponse;
import com.credible.response.ApiCalculatorCostOfDelay;
import com.credible.response.ApiCalculatorCrorepati;
import com.credible.response.ApiCalculatorEMI;
import com.credible.response.ApiCalculatorLumpsumTarget;
import com.credible.response.ApiCalculatorSIP;
import com.credible.response.ApiCalculatorSIPStepUp;
import com.credible.response.ApiCalculatorSIPStepUpTable;
import com.credible.response.ApiCalculatorTargetAmountSIPCalc;
import com.credible.utils.ESAPIValidator;
import com.credible.utils.HttpPost;
import com.credible.utils.MfApiAccessor;
import com.credible.utils.MfApiUrls;
import com.credible.utils.StatusCodesAndMessages;
import com.credible.utils.StatusMessage;
import com.google.gson.Gson;

@Controller
public class CalculatorController {

	@RequestMapping(value = "/tools-and-calculators/become-a-crorepati")
	public String crorepati2(HttpServletRequest request, HttpServletResponse response) {
		try {
			String current_age = request.getParameter("current_age");
			String retirement_age = request.getParameter("retirement_age");
			String wealth_amount = request.getParameter("wealth_amount");
			String inflation_rate = request.getParameter("inflation_rate");
			String expected_return = request.getParameter("expected_return");
			String savings_amount = request.getParameter("savings_amount");

			if (current_age == null || StringHelper.isEmpty(current_age)) {
				current_age = "30";
			}
			if (retirement_age == null || StringHelper.isEmpty(retirement_age)) {
				retirement_age = "60";
			}
			if (wealth_amount == null || StringHelper.isEmpty(wealth_amount)) {
				wealth_amount = "50000000";
			}
			if (inflation_rate == null || StringHelper.isEmpty(inflation_rate)) {
				inflation_rate = "5.0";
			}
			if (expected_return == null || StringHelper.isEmpty(expected_return)) {
				expected_return = "12";
			}
			if (savings_amount == null || StringHelper.isEmpty(savings_amount)) {
				savings_amount = "2500000";
			}

			current_age = current_age.trim();
			retirement_age = retirement_age.trim();
			wealth_amount = wealth_amount.trim();
			inflation_rate = inflation_rate.trim();
			expected_return = expected_return.trim();
			savings_amount = savings_amount.trim();

			request.setAttribute("current_age", current_age);
			request.setAttribute("retirement_age", retirement_age);
			request.setAttribute("wealth_amount", wealth_amount);
			request.setAttribute("inflation_rate", inflation_rate);
			request.setAttribute("expected_return", expected_return);
			request.setAttribute("savings_amount", savings_amount);

			request.setAttribute("page", "tcalc");
			request.setAttribute("menu", "Become A Crorepati");
			request.setAttribute("jsp", "../calculator/become-crorepati.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return "layout/layout";
	}
	
	
	


	/*
	 * @RequestMapping(value="/tools-and-calculators/getSwpCalcResult") public void
	 * getSwpCalcResult(HttpServletRequest request, HttpServletResponse response)
	 * throws IOException { PrintWriter writer = null; Gson gson = null;
	 * ApiCalculatorSIP finalresult = null; String apiresponse = "";
	 * 
	 * try { writer = response.getWriter(); gson = new Gson();
	 * response.setContentType("text/html"); finalresult = new ApiCalculatorSIP();
	 * 
	 * String lumpsum_amount = request.getParameter("lumpsum_amount"); String
	 * withdrawal_amount = request.getParameter("withdrawal_amount"); String
	 * interest_rate = request.getParameter("interest_rate"); String period =
	 * request.getParameter("period"); String swp_frequency =
	 * request.getParameter("swp_frequency");
	 * 
	 * if(lumpsum_amount == null ||
	 * StringHelper.isEmpty(lumpsum_amount)){lumpsum_amount = "0";}
	 * if(withdrawal_amount == null ||
	 * StringHelper.isEmpty(withdrawal_amount)){withdrawal_amount = "0";}
	 * if(interest_rate == null ||
	 * StringHelper.isEmpty(interest_rate)){interest_rate = "0";} if(period == null
	 * || StringHelper.isEmpty(period)){period = "0";} if(swp_frequency == null ||
	 * StringHelper.isEmpty(swp_frequency)){swp_frequency = "Monthly";}
	 * 
	 * lumpsum_amount = lumpsum_amount.trim(); withdrawal_amount =
	 * withdrawal_amount.trim(); interest_rate = interest_rate.trim(); period =
	 * period.trim(); swp_frequency = swp_frequency.trim();
	 * 
	 * ESAPI VALIDATION String[][] param_and_pattern =
	 * {{lumpsum_amount,"SafeString"},{withdrawal_amount,"SafeString"},{
	 * interest_rate,"SafeString"},{period,"SafeString"},};
	 * 
	 * int invalid_index_para = ESAPIValidator.isValidParameters(param_and_pattern);
	 * if(invalid_index_para > -1) { String[] parameters_name =
	 * {"lumpsum amount","withdrawal amount","interest rate","period"}; String
	 * validationErrorMsg = "Invalid "+parameters_name[invalid_index_para];
	 * finalresult.setStatus(StatusMessage.FailureCode);
	 * finalresult.setStatus_msg(StatusMessage.FailureMessage);
	 * finalresult.setMsg(validationErrorMsg); apiresponse =
	 * gson.toJson(finalresult); writer.print(apiresponse);Esapi FailureResponse
	 * writer.close(); return; } ESAPI VALIDATION
	 * 
	 * HashMap<String, String> hashMap = new HashMap<String, String>();
	 * hashMap.put("lumpsum_amount", lumpsum_amount);
	 * hashMap.put("withdrawal_amount", withdrawal_amount);
	 * hashMap.put("interest_rate", interest_rate); hashMap.put("period",period);
	 * hashMap.put("swp_frequency",swp_frequency); hashMap.put("key",
	 * "cc223622-3db2-45ea-b344-1ecd8b3037ce");
	 * 
	 * String formattedUrl, result = "";
	 * 
	 * formattedUrl = MfApiAccessor.getFormattedUrl(MfApiUrls.getSwpCalResult,
	 * hashMap); System.out.println("formattedUrl-->"+formattedUrl); result =
	 * HttpPost.SendHttpPost(formattedUrl); System.out.println("result-->"+result);
	 * ApiCalculatorSIP apiCalculatorSIP = new Gson().fromJson(result,
	 * ApiCalculatorSIP.class);
	 * 
	 * finalresult.setStatus(StatusMessage.SuccessCode);
	 * finalresult.setStatus_msg(StatusMessage.SuccessMessage);
	 * finalresult.setMsg(StatusMessage.SuccessMessage);
	 * finalresult.setLumpsum_amount(apiCalculatorSIP.getLumpsum_amount());
	 * finalresult.setWithdrawal_amount(apiCalculatorSIP.getWithdrawal_amount());
	 * finalresult.setInterest_rate(apiCalculatorSIP.getInterest_rate());
	 * finalresult.setPeriod(apiCalculatorSIP.getPeriod());
	 * finalresult.setTotal_withdrawal_amount(apiCalculatorSIP.
	 * getTotal_withdrawal_amount());
	 * finalresult.setTotal_balance_amount(apiCalculatorSIP.getTotal_balance_amount(
	 * )); finalresult.setTotal_profit(apiCalculatorSIP.getTotal_profit());
	 * finalresult.setCash_flow_list(apiCalculatorSIP.getCash_flow_stp());
	 * 
	 * apiresponse = gson.toJson(finalresult);
	 * 
	 * writer.print(apiresponse); writer.close(); } catch (Exception ex) {
	 * ex.printStackTrace(); } }
	 */
	@RequestMapping(value = "/tools-and-calculators/getSwpCalcResult")
	public void getSwpCalcResult(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter writer = null;
		Gson gson = null;
		ApiCalculatorSIP result = null;
		String apiresponse = "";

		try {
			writer = response.getWriter();
			gson = new Gson();
			response.setContentType("text/html");
			result = new ApiCalculatorSIP();

			String lumpsum_amount = request.getParameter("lumpsum_amount");
			String withdrawal_amount = request.getParameter("withdrawal_amount");
			String interest_rate = request.getParameter("interest_rate");
			String period = request.getParameter("period");
			String swp_frequency = request.getParameter("swp_frequency");

			if (lumpsum_amount == null || StringHelper.isEmpty(lumpsum_amount)) {
				lumpsum_amount = "0";
			}
			if (withdrawal_amount == null || StringHelper.isEmpty(withdrawal_amount)) {
				withdrawal_amount = "0";
			}
			if (interest_rate == null || StringHelper.isEmpty(interest_rate)) {
				interest_rate = "0";
			}
			if (period == null || StringHelper.isEmpty(period)) {
				period = "0";
			}
			if (swp_frequency == null || StringHelper.isEmpty(swp_frequency)) {
				swp_frequency = "Monthly";
			}

			lumpsum_amount = lumpsum_amount.trim();
			withdrawal_amount = withdrawal_amount.trim();
			interest_rate = interest_rate.trim();
			period = period.trim();
			swp_frequency = swp_frequency.trim();

			Double lumpsum_amt = Double.parseDouble(lumpsum_amount);
			Double withdrawal_amt = Double.parseDouble(withdrawal_amount);
			Double rateofReturn = Double.parseDouble(interest_rate);
			Double withdrawal_period = Double.parseDouble(period);

			int trans_count = 0;
			Double no_of_months = 0.0;
			Double monthly_return = 0.0;
			if (swp_frequency.equalsIgnoreCase("Monthly")) {
				no_of_months = withdrawal_period * 12.0;
				Double value10 = 1 + (rateofReturn / 100.0);
				Double value11 = (1.0 / 12.0);
				Double value12 = Math.pow(value10, value11);
				monthly_return = value12 - 1.0;
				// monthly_return = (rateofReturn / 100.0) / 12.0;

			} else if (swp_frequency.equalsIgnoreCase("Quarterly")) {
				no_of_months = withdrawal_period * 4.0;
				Double value10 = 1 + (rateofReturn / 100.0);
				Double value11 = (1.0 / 4.0);
				Double value12 = Math.pow(value10, value11);
				monthly_return = value12 - 1.0;
				// monthly_return = (rateofReturn / 100.0) / 4.0;

			} else if (swp_frequency.equalsIgnoreCase("Fortnightly")) {
				no_of_months = withdrawal_period * 24.0;
				Double value10 = 1 + (rateofReturn / 100.0);
				Double value11 = (1.0 / 24.0);
				Double value12 = Math.pow(value10, value11);
				monthly_return = value12 - 1.0;
				// monthly_return = ((rateofReturn / 100.0) / 365.0) * 15.0;

			} else if (swp_frequency.equalsIgnoreCase("Weekly")) {
				no_of_months = withdrawal_period * 48.0;
				Double value10 = 1 + (rateofReturn / 100.0);
				Double value11 = (1.0 / 48.0);
				Double value12 = Math.pow(value10, value11);
				monthly_return = value12 - 1.0;
				// monthly_return = ((rateofReturn / 100.0) / 365.0) * 7.0;

			} else if (swp_frequency.equalsIgnoreCase("Yearly")) {
				no_of_months = withdrawal_period;
				Double value10 = 1 + (rateofReturn / 100.0);
				Double value11 = (1.0 / 1.0);
				Double value12 = Math.pow(value10, value11);
				monthly_return = value12 - 1.0;
				// monthly_return = (rateofReturn / 100.0);

			} else if (swp_frequency.equalsIgnoreCase("Half Yearly")) {
				no_of_months = withdrawal_period * 2;
				Double value10 = 1 + (rateofReturn / 100.0);
				Double value11 = (1.0 / 2.0);
				Double value12 = Math.pow(value10, value11);
				monthly_return = value12 - 1.0;
				// monthly_return = (rateofReturn / 100.0) / 2;
			}
			Double balance_amt = lumpsum_amt;

			List<SwpCalcResponse> cash_flow_list = new ArrayList<SwpCalcResponse>();

			for (int k = 1; k <= no_of_months; k++) {
				if ((balance_amt - withdrawal_amt) > 0) {
					Double interest_earned = monthly_return * (balance_amt);
					Double month_end_balance = (balance_amt - withdrawal_amt) + interest_earned;

					SwpCalcResponse swp = new SwpCalcResponse();
					swp.setBalance_amt(balance_amt.longValue());
					swp.setWithdrawal_amt(withdrawal_amt.longValue());
					swp.setInterest_earned(interest_earned.longValue());
					swp.setMonth_end_balance(month_end_balance.longValue());
					cash_flow_list.add(swp);

					balance_amt = month_end_balance;

					trans_count++;

				} else {
					break;
				}
			}
			Double total_withdrawal_amt = withdrawal_amt * trans_count;

			Double profit = (balance_amt + total_withdrawal_amt) - lumpsum_amt;

			result.setStatus(StatusMessage.SuccessCode);
			result.setStatus_msg(StatusMessage.SuccessMessage);
			result.setMsg(StatusMessage.SuccessMessage);
			result.setLumpsum_amount(lumpsum_amt.intValue());
			result.setWithdrawal_amount(withdrawal_amt.intValue());
			result.setInterest_rate(rateofReturn);
			result.setPeriod(withdrawal_period.intValue());
			result.setTotal_withdrawal_amount(total_withdrawal_amt.longValue());
			result.setTotal_balance_amount(balance_amt.longValue());
			result.setTotal_profit(profit.longValue());
			result.setCash_flow_list(cash_flow_list);

			apiresponse = gson.toJson(result);

			writer.print(apiresponse);
			writer.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	
	@RequestMapping(value="/tools-and-calculators/getCompositeFinancialGoalPlannerResult")
	public void getCompositeFinancialGoalPlannerResult(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		PrintWriter writer = null;		
		Gson gson = null;
		ApiCalculatorCompositePlanner result = null;
		String apirequest = "",apiresponse = "";
		
		try 
		{	
			writer = response.getWriter();
			gson = new Gson();
			response.setContentType("text/html");
			result = new ApiCalculatorCompositePlanner();
			
			String child_current_age = request.getParameter("child_current_age");
	     	String child_education_age = request.getParameter("child_education_age");
            String education_amount = request.getParameter("education_amount");
            String current_age = request.getParameter("current_age");
            String wealth_age = request.getParameter("wealth_age");
	     	String wealth_amount = request.getParameter("wealth_amount");
            String expense_amount = request.getParameter("expense_amount");
            String expense_year = request.getParameter("expense_year");
            String inflation_rate = request.getParameter("inflation_rate");
            String expected_return = request.getParameter("expected_return");
            String savings_amount = request.getParameter("savings_amount");
            
			if(child_current_age == null || StringHelper.isEmpty(child_current_age)){child_current_age = "";}
            if(child_education_age == null || StringHelper.isEmpty(child_education_age)){child_education_age = "";}
            if(education_amount == null || StringHelper.isEmpty(education_amount)){education_amount = "";}
            if(current_age == null || StringHelper.isEmpty(current_age)){current_age = "";}
            if(wealth_age == null || StringHelper.isEmpty(wealth_age)){wealth_age = "";}
            if(wealth_amount == null || StringHelper.isEmpty(wealth_amount)){wealth_amount = "";}
            if(expense_amount == null || StringHelper.isEmpty(expense_amount)){expense_amount = "";}
            if(expense_year == null || StringHelper.isEmpty(expense_year)){expense_year = "";}
            if(inflation_rate == null || StringHelper.isEmpty(inflation_rate)){inflation_rate = "";}
            if(expected_return == null || StringHelper.isEmpty(expected_return)){expected_return = "";}
            if(savings_amount == null || StringHelper.isEmpty(savings_amount)){savings_amount = "";}

            child_current_age = child_current_age.trim();
            child_education_age = child_education_age.trim();
            education_amount = education_amount.trim();
            current_age = current_age.trim();
            wealth_age = wealth_age.trim();
            wealth_amount = wealth_amount.trim();
            expense_amount = expense_amount.trim();
            expense_year = expense_year.trim();
            inflation_rate = inflation_rate.trim();
            expected_return = expected_return.trim();
            savings_amount = savings_amount.trim();
            
            Integer childAge = Integer.parseInt(child_current_age);
        	Integer childEducationAge = Integer.parseInt(child_education_age);
        	long educationAmount = Long.parseLong(education_amount);
        	long educationAmount_init = Long.parseLong(education_amount);
        	Integer currentAge = Integer.parseInt(current_age);
        	Integer retireAge = Integer.parseInt(wealth_age);
        	long wealthyAmount = Long.parseLong(wealth_amount);
        	long wealthyAmount_init = Long.parseLong(wealth_amount);
        	long dreamAmount = Long.parseLong(expense_amount);
        	long dreamAmount_init = Long.parseLong(expense_amount);
        	Integer dreamExpenseYear = Integer.parseInt(expense_year);
        	Double increaseRate = Double.parseDouble(inflation_rate);
        	Double rateOfReturn = Double.parseDouble(expected_return);
        	long investmentAmount = Long.parseLong(savings_amount);
        	long investmentAmount_init = Long.parseLong(savings_amount);

        	long current_total_amount = educationAmount + wealthyAmount + dreamAmount;
        	
        	long currentAmountEdu = Math.round((investmentAmount * educationAmount) / current_total_amount);
        	long currentAmountWel = Math.round((investmentAmount * wealthyAmount) / current_total_amount);
        	long currentAmountDir = Math.round((investmentAmount * dreamAmount) / current_total_amount);
        	
        	Integer eduAgeDiff = childEducationAge - childAge;
        	//calculation for savings targets
        	Double edu_value1 = 1 + (increaseRate / 100);
        	Double edu_value2 = Math.pow(edu_value1,eduAgeDiff);
        	long eduSavingsTarget = Math.round(educationAmount * edu_value2);
        	long eduSavingsTargetAmt = Math.round(currentAmountEdu * edu_value2);
        	eduSavingsTargetAmt = eduSavingsTarget - eduSavingsTargetAmt;

        	//calculation for monthly savings
        	Double edu_value3 = 1 + (rateOfReturn / 100);
        	Double edu_value4 = 0.0;
        	for(int m = 1; m <= eduAgeDiff; m++) {
        		edu_value4 = edu_value4 + Math.pow(edu_value3,m);
        	}
        	Double yearlySavingsEdu = (eduSavingsTargetAmt / edu_value4);
        	long monthlySavingsEdu = Math.round(yearlySavingsEdu / 12.0);
        	
        	Integer welAgeDiff = retireAge - currentAge;
        	//calculation for savings targets
        	Double wel_value1 = 1 + (increaseRate / 100);
        	Double wel_value2 = Math.pow(wel_value1,welAgeDiff);
        	long welSavingsTarget = Math.round(wealthyAmount * wel_value2);
        	long welSavingsTargetAmt = Math.round(currentAmountWel * wel_value2);
        	welSavingsTargetAmt = welSavingsTarget - welSavingsTargetAmt;

        	//calculation for monthly savings
        	Double wel_value3 = 1 + (rateOfReturn / 100);
        	Double wel_value4 = 0.0;
        	for(int n = 1; n <= welAgeDiff; n++) {
        		wel_value4 = wel_value4 + Math.pow(wel_value3,n);
        	}
        	Double yearlySavingsWel = (welSavingsTargetAmt / wel_value4);
        	long monthlySavingsWel = Math.round(yearlySavingsWel / 12.0);
        	
        	Integer DreAgeDiff = dreamExpenseYear;
        	//calculation for savings targets
        	Double dre_value1 = 1 + (increaseRate / 100);
        	Double dre_value2 = Math.pow(dre_value1,DreAgeDiff);
        	long dreSavingsTarget = Math.round(dreamAmount * dre_value2);
        	long dreSavingsTargetAmt = Math.round(currentAmountDir * dre_value2);
        	dreSavingsTargetAmt = dreSavingsTarget - dreSavingsTargetAmt;

        	//calculation for monthly savings
        	Double dre_value3 = 1 + (rateOfReturn / 100);
        	Double dre_value4 = 0.0;
        	for(int p = 1; p <= DreAgeDiff; p++) {
        		dre_value4 = dre_value4 + Math.pow(dre_value3,p);
        	}
        	Double yearlySavingsDre = (dreSavingsTargetAmt / dre_value4);
        	long monthlySavingsDre = Math.round(yearlySavingsDre / 12.0);
        	
        	long totalCurrentPrice = educationAmount + wealthyAmount + dreamAmount;
        	long totalPriceInc = eduSavingsTarget + welSavingsTarget + dreSavingsTarget;
        	long totalMonthlySavings = Math.round(monthlySavingsEdu) + Math.round(monthlySavingsWel) + Math.round(monthlySavingsDre);
            
        	result.setStatus(StatusMessage.SuccessCode);
        	result.setStatus_msg(StatusMessage.SuccessMessage);
        	result.setMsg(StatusMessage.SuccessMessage);
        	result.setChild_current_age(childAge);
        	result.setChild_education_age(childEducationAge);
        	result.setEducation_amount(educationAmount_init);
        	result.setCurrent_age(currentAge);
        	result.setWealth_age(retireAge);
        	result.setWealth_amount(wealthyAmount_init);
        	result.setExpense_amount(dreamAmount_init);
        	result.setExpense_year(dreamExpenseYear);
        	result.setInflation_rate(increaseRate);
        	result.setExpected_return(rateOfReturn);
        	result.setSavings_amount(investmentAmount_init);
        	result.setTotal_education_amount(educationAmount);
        	result.setTotal_wealth_amount(wealthyAmount);
        	result.setTotal_expense_amount(dreamAmount);
        	result.setTotal_current_value(totalCurrentPrice);
        	result.setFinal_education_year(eduAgeDiff);
        	result.setFinal_wealth_year(welAgeDiff);
        	result.setFinal_expense_year(DreAgeDiff);
        	result.setEducation_target(eduSavingsTarget);
        	result.setWealth_target(welSavingsTarget);
        	result.setExpense_target(dreSavingsTarget);
        	result.setTotal_inflation_adjust_value(totalPriceInc);
        	result.setEducation_savings_amount(currentAmountEdu);
        	result.setWealth_savings_amount(currentAmountWel);
        	result.setExpense_savings_amount(currentAmountDir);
        	result.setTotal_savings_amount(investmentAmount);
        	result.setEducation_monthly_savings(monthlySavingsEdu);
        	result.setWealth_monthly_savings(monthlySavingsWel);
        	result.setExpense_monthly_savings(monthlySavingsDre);
        	result.setTotal_monthly_savings(totalMonthlySavings);
        	
            apiresponse = gson.toJson(result);
    		writer.print(apiresponse);
		    writer.close();
		} 
		catch (Exception ex) 
		{
			ex.printStackTrace();
		}
	}

	
	
	@RequestMapping(value="/tools-and-calculators/composite-financial-goal-planner-calculator")
	public String personalCompositeGoalPlanner(HttpServletRequest request, HttpServletResponse response) 
	{
   	try 
		{
 		
		String child_current_age = request.getParameter("child_current_age");
     	String child_education_age = request.getParameter("child_education_age");
        String education_amount = request.getParameter("education_amount");
        String current_age = request.getParameter("current_age");
        String wealth_age = request.getParameter("wealth_age");
     	String wealth_amount = request.getParameter("wealth_amount");
        String expense_amount = request.getParameter("expense_amount");
        String expense_year = request.getParameter("expense_year");
        String inflation_rate = request.getParameter("inflation_rate");
        String expected_return = request.getParameter("expected_return");
        String savings_amount = request.getParameter("savings_amount");
        
		if(child_current_age == null || StringHelper.isEmpty(child_current_age)){child_current_age = "5";}
        if(child_education_age == null || StringHelper.isEmpty(child_education_age)){child_education_age = "25";}
        if(education_amount == null || StringHelper.isEmpty(education_amount)){education_amount = "2500000";}
        if(current_age == null || StringHelper.isEmpty(current_age)){current_age = "26";}
        if(wealth_age == null || StringHelper.isEmpty(wealth_age)){wealth_age = "60";}
        if(wealth_amount == null || StringHelper.isEmpty(wealth_amount)){wealth_amount = "5000000";}
        if(expense_amount == null || StringHelper.isEmpty(expense_amount)){expense_amount = "1500000";}
        if(expense_year == null || StringHelper.isEmpty(expense_year)){expense_year = "30";}
        if(inflation_rate == null || StringHelper.isEmpty(inflation_rate)){inflation_rate = "8";}
        if(expected_return == null || StringHelper.isEmpty(expected_return)){expected_return = "12";}
        if(savings_amount == null || StringHelper.isEmpty(savings_amount)){savings_amount = "500000";}
        
        child_current_age = child_current_age.trim();
        child_education_age = child_education_age.trim();
        education_amount = education_amount.trim();
        current_age = current_age.trim();
        wealth_age = wealth_age.trim();
        wealth_amount = wealth_amount.trim();
        expense_amount = expense_amount.trim();
        expense_year = expense_year.trim();
        inflation_rate = inflation_rate.trim();
        expected_return = expected_return.trim();
        savings_amount = savings_amount.trim();
        
        request.setAttribute("child_current_age", child_current_age);
		request.setAttribute("child_education_age", child_education_age);
		request.setAttribute("education_amount", education_amount);
		request.setAttribute("current_age", current_age);
		request.setAttribute("wealth_age", wealth_age);
		request.setAttribute("wealth_amount", wealth_amount);
		request.setAttribute("expense_amount", expense_amount);
		request.setAttribute("expense_year", expense_year);
		request.setAttribute("inflation_rate", inflation_rate);
		request.setAttribute("expected_return", expected_return);
		request.setAttribute("savings_amount", savings_amount);
		
		request.setAttribute("menu", "Composite Financial Goal");
		request.setAttribute("page", "tcalc");
		request.setAttribute("jsp", "../calculator/personal_composite_calculator.jsp");
		}
   	catch(Exception ex)
   	{
   		ex.printStackTrace();
   	}
   	return "layout/layout";
	}


	@RequestMapping(value = "/tools-and-calculators/swp-calculator")
	public String swp_calculator(HttpServletRequest request, HttpServletResponse response) {
		try {
			String lumpsum_amount = request.getParameter("lumpsum_amount");
			String withdrawal_amount = request.getParameter("withdrawal_amount");
			String interest_rate = request.getParameter("interest_rate");
			String period = request.getParameter("period");
			// String client_name = accountMap.get("client_name");

			NumberFormat format = NumberFormat.getNumberInstance(new Locale("en", "IN"));

			if (lumpsum_amount == null || StringHelper.isEmpty(lumpsum_amount)) {
				lumpsum_amount = "500000";
			}
			if (withdrawal_amount == null || StringHelper.isEmpty(withdrawal_amount)) {
				withdrawal_amount = "10000";
			}
			if (interest_rate == null || StringHelper.isEmpty(interest_rate)) {
				interest_rate = "10";
			}
			if (period == null || StringHelper.isEmpty(period)) {
				period = "5";
			}

			lumpsum_amount = lumpsum_amount.trim();
			withdrawal_amount = withdrawal_amount.trim();
			interest_rate = interest_rate.trim();
			period = period.trim();

			request.setAttribute("lumpsum_amount", lumpsum_amount);
			request.setAttribute("withdrawal_amount", withdrawal_amount);
			request.setAttribute("interest_rate", interest_rate);
			request.setAttribute("period", period);

			Map<String, String> breadCrumbsMap = new HashMap<String, String>();
			breadCrumbsMap.put("Home", "/");
			breadCrumbsMap.put("SWP Calculator", "");
			request.setAttribute("breadCrumbsMap", breadCrumbsMap);

			request.setAttribute("headermenu", "calculators");
			request.setAttribute("page", "calculators");
			request.setAttribute("calculator", "swp-calculator");

			request.setAttribute("jsp", "../calculator/swp_calculator.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping(value = "/tools-and-calculators/getCrorepatiResult")
	public void getSIPReturnCalculator(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter writer = null;
		Gson gson = null;
		ApiCalculatorCrorepati result = null;
		String apirequest = "", apiresponse = "";

		try {
			writer = response.getWriter();
			gson = new Gson();
			response.setContentType("application/json"); // Changed to application/json for clean REST API response
			result = new ApiCalculatorCrorepati();

			String current_age = request.getParameter("current_age");
			String retirement_age = request.getParameter("retirement_age");
			String wealth_amount = request.getParameter("wealth_amount");
			String inflation_rate = request.getParameter("inflation_rate");
			String expected_return = request.getParameter("expected_return");
			String savings_amount = request.getParameter("savings_amount");

			if (current_age == null || StringHelper.isEmpty(current_age)) {
				current_age = "";
			}
			if (retirement_age == null || StringHelper.isEmpty(retirement_age)) {
				retirement_age = "";
			}
			if (wealth_amount == null || StringHelper.isEmpty(wealth_amount)) {
				wealth_amount = "";
			}
			if (inflation_rate == null || StringHelper.isEmpty(inflation_rate)) {
				inflation_rate = "";
			}
			if (expected_return == null || StringHelper.isEmpty(expected_return)) {
				expected_return = "";
			}
			if (savings_amount == null || StringHelper.isEmpty(savings_amount)) {
				savings_amount = "";
			}

			current_age = current_age.trim();
			retirement_age = retirement_age.trim();
			wealth_amount = wealth_amount.trim();
			inflation_rate = inflation_rate.trim();
			expected_return = expected_return.trim();
			savings_amount = savings_amount.trim();

			Integer currentAge = Integer.parseInt(current_age);
			Integer retirementAge = Integer.parseInt(retirement_age);
			long wealthAmount = Long.parseLong(wealth_amount.replace(",", ""));
			Double inflationRate = Double.parseDouble(inflation_rate);
			Double expectedReturn = Double.parseDouble(expected_return);
			long savingsAmount = Long.parseLong(savings_amount.replace(",", ""));

			Integer years = retirementAge - currentAge;
			int months = years * 12;

			if (years <= 0) {
				throw new IllegalArgumentException("Retirement age must be greater than current age.");
			}

			// 1. Target Wealth (Inflation-adjusted)
			double inflationFactor = 1 + (inflationRate / 100.0);
			long target_wealth = Math.round(wealthAmount * Math.pow(inflationFactor, years));

			// 2. Future Value of Existing Savings (effective monthly rate derived from
			// annual return)
			double annualReturn = expectedReturn / 100.0;
			double monthlyRate = Math.pow(1 + annualReturn, 1.0 / 12.0) - 1.0;
			long target_savings = Math.round(savingsAmount * Math.pow(1 + monthlyRate, months));

			// 3. Final Target Amount needed from SIP
			long target_amount = Math.max(0L, target_wealth - target_savings);

			// 4. SIP Future Value Factor (Annuity Due / Beginning of Month)
			double sipFactor;
			if (monthlyRate == 0) {
				sipFactor = months;
			} else {
				sipFactor = ((Math.pow(1 + monthlyRate, months) - 1) / monthlyRate) * (1 + monthlyRate);
			}

			// 5. Monthly SIP required — use ROUND, not CEIL
			long monthly_savings = target_amount == 0 ? 0 : Math.round(target_amount / sipFactor);

			// 6. Total Invested Amount via SIP
			long invested_amount = monthly_savings * months;

			// 7. Total Growth Amount
			long total_earnings = Math.max(0L, target_amount - invested_amount); // Set Results
			result.setStatus(StatusMessage.SuccessCode);
			result.setStatus_msg(StatusMessage.SuccessMessage);
			result.setMsg(StatusMessage.SuccessMessage);
			result.setCurrent_age(currentAge);
			result.setRetirement_age(retirementAge);
			result.setWealth_amount(wealthAmount);
			result.setInflation_rate(inflationRate);
			result.setExpected_return(expectedReturn);
			result.setSavings_amount(savingsAmount);
			result.setTarget_wealth(target_wealth);
			result.setTarget_savings(target_savings);
			result.setTarget_amount(target_amount);
			result.setYears(years);
			result.setMonthly_savings(monthly_savings);
			result.setInvested_amount(invested_amount);
			result.setTotal_earnings(total_earnings);

			apiresponse = gson.toJson(result);
			writer.print(apiresponse);
			writer.close();

		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	/*
	 * @RequestMapping(value = "/tools-and-calculators/getCrorepatiResult") public
	 * void getSIPReturnCalculator(HttpServletRequest request, HttpServletResponse
	 * response) throws IOException { PrintWriter writer = null; Gson gson = null;
	 * String origin = null; ApiCalculatorCrorepati finalResult = null; String
	 * apiresponse = "";
	 * 
	 * try { writer = response.getWriter(); gson = new Gson();
	 * response.setContentType("text/html"); origin = request.getHeader("Origin");
	 * if (origin == null) { origin = ""; }
	 * 
	 * finalResult = new ApiCalculatorCrorepati();
	 * 
	 * String current_age = request.getParameter("current_age"); String
	 * retirement_age = request.getParameter("retirement_age"); String wealth_amount
	 * = request.getParameter("wealth_amount"); String inflation_rate =
	 * request.getParameter("inflation_rate"); String expected_return =
	 * request.getParameter("expected_return"); String savings_amount =
	 * request.getParameter("savings_amount");
	 * 
	 * if (current_age == null || StringHelper.isEmpty(current_age)) { current_age =
	 * ""; } if (retirement_age == null || StringHelper.isEmpty(retirement_age)) {
	 * retirement_age = ""; } if (wealth_amount == null ||
	 * StringHelper.isEmpty(wealth_amount)) { wealth_amount = ""; } if
	 * (inflation_rate == null || StringHelper.isEmpty(inflation_rate)) {
	 * inflation_rate = ""; } if (expected_return == null ||
	 * StringHelper.isEmpty(expected_return)) { expected_return = ""; } if
	 * (savings_amount == null || StringHelper.isEmpty(savings_amount)) {
	 * savings_amount = ""; }
	 * 
	 * current_age = current_age.trim(); retirement_age = retirement_age.trim();
	 * wealth_amount = wealth_amount.trim(); inflation_rate = inflation_rate.trim();
	 * expected_return = expected_return.trim(); savings_amount =
	 * savings_amount.trim();
	 * 
	 * 
	 * 
	 * HashMap<String, String> hashMap = new HashMap<String, String>();
	 * hashMap.put("current_age", current_age); hashMap.put("retirement_age",
	 * retirement_age); hashMap.put("wealth_amount", wealth_amount);
	 * hashMap.put("inflation_rate", inflation_rate); hashMap.put("expected_return",
	 * expected_return); hashMap.put("savings_amount", savings_amount);
	 * 
	 * String formattedUrl, result = "";
	 * 
	 * formattedUrl = MfApiAccessor.getFormattedUrl(MfApiUrls.getCrorepatiResult,
	 * hashMap); System.out.println("formattedUrl-->"+formattedUrl); result =
	 * HttpPost.SendHttpPost(formattedUrl); //
	 * System.out.println("result-->"+result); ApiCalculatorCrorepati
	 * apiCalculatorCrorepati = new Gson().fromJson(result,
	 * ApiCalculatorCrorepati.class);
	 * 
	 * finalResult.setStatus(StatusCodesAndMessages.SuccessCode);
	 * finalResult.setStatus_msg(StatusCodesAndMessages.SuccessMessage);
	 * finalResult.setMsg(StatusCodesAndMessages.SuccessMessage);
	 * finalResult.setCurrent_age(apiCalculatorCrorepati.getCurrent_age());
	 * finalResult.setRetirement_age(apiCalculatorCrorepati.getRetirement_age());
	 * finalResult.setWealth_amount(apiCalculatorCrorepati.getWealth_amount());
	 * finalResult.setInflation_rate(apiCalculatorCrorepati.getInflation_rate());
	 * finalResult.setExpected_return(apiCalculatorCrorepati.getExpected_return());
	 * finalResult.setSavings_amount(apiCalculatorCrorepati.getSavings_amount());
	 * finalResult.setTarget_wealth(apiCalculatorCrorepati.getTarget_wealth());
	 * finalResult.setTarget_savings(apiCalculatorCrorepati.getTarget_savings());
	 * finalResult.setTarget_amount(apiCalculatorCrorepati.getTarget_amount());
	 * finalResult.setYears(apiCalculatorCrorepati.getYears());
	 * finalResult.setMonthly_savings(apiCalculatorCrorepati.getMonthly_savings());
	 * finalResult.setInvested_amount(apiCalculatorCrorepati.getInvested_amount());
	 * finalResult.setTotal_earnings(apiCalculatorCrorepati.getTotal_earnings());
	 * 
	 * apiresponse = gson.toJson(finalResult); writer.print(apiresponse);
	 * writer.close(); } catch (Exception ex) { ex.printStackTrace(); } }
	 */

	@RequestMapping(value = "/tools-and-calculators/getCostOfDelayResult")
	public void getCostOfDelayCalculator(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter writer = null;
		Gson gson = null;
		ApiCalculatorCostOfDelay result = null;

		try {
			writer = response.getWriter();
			gson = new Gson();
			response.setContentType("application/json");
			result = new ApiCalculatorCostOfDelay();

			String invest_now_age = request.getParameter("invest_now_age");
			String invest_later_age = request.getParameter("invest_later_age");
			String ending_age = request.getParameter("ending_age");
			String sip_amount = request.getParameter("sip_amount");
			String expected_return = request.getParameter("expected_return");

			if (invest_now_age == null || StringHelper.isEmpty(invest_now_age)) {
				invest_now_age = "";
			}
			if (invest_later_age == null || StringHelper.isEmpty(invest_later_age)) {
				invest_later_age = "";
			}
			if (ending_age == null || StringHelper.isEmpty(ending_age)) {
				ending_age = "";
			}
			if (sip_amount == null || StringHelper.isEmpty(sip_amount)) {
				sip_amount = "";
			}
			if (expected_return == null || StringHelper.isEmpty(expected_return)) {
				expected_return = "";
			}

			invest_now_age = invest_now_age.trim();
			invest_later_age = invest_later_age.trim();
			ending_age = ending_age.trim();
			sip_amount = sip_amount.trim().replace(",", "");
			expected_return = expected_return.trim();

			Integer investNowAge = Integer.parseInt(invest_now_age);
			Integer investLaterAge = Integer.parseInt(invest_later_age);
			Integer endingAge = Integer.parseInt(ending_age);
			long sipAmount = Long.parseLong(sip_amount);
			Double expectedReturn = Double.parseDouble(expected_return);

			int yearsNow = endingAge - investNowAge;
			int yearsLater = endingAge - investLaterAge;

			if (yearsNow <= 0 || yearsLater <= 0) {
				throw new IllegalArgumentException("Ending age must be greater than both starting ages.");
			}

			int monthsNow = yearsNow * 12;
			int monthsLater = yearsLater * 12;

			// Monthly nominal rate (NOT effective) - matches ordinary annuity SIP formula
			double monthlyRate = expectedReturn / 12.0 / 100.0;

			double finalValueNow = sipFutureValue(sipAmount, monthlyRate, monthsNow);
			double finalValueLater = sipFutureValue(sipAmount, monthlyRate, monthsLater);

			long investedNow = sipAmount * monthsNow;
			long investedLater = sipAmount * monthsLater;

			long wealthNow = Math.round(finalValueNow) - investedNow;
			long wealthLater = Math.round(finalValueLater) - investedLater;

			long costOfDelay = Math.round(finalValueNow) - Math.round(finalValueLater);

			result.setStatus(StatusMessage.SuccessCode);
			result.setStatus_msg(StatusMessage.SuccessMessage);
			result.setMsg(StatusMessage.SuccessMessage);
			result.setInvest_now_age(investNowAge);
			result.setInvest_later_age(investLaterAge);
			result.setEnding_age(endingAge);
			result.setSip_amount(sipAmount);
			result.setExpected_return(expectedReturn);
			result.setYears_now(yearsNow);
			result.setYears_later(yearsLater);
			result.setInvested_now(investedNow);
			result.setInvested_later(investedLater);
			result.setFinal_value_now(Math.round(finalValueNow));
			result.setFinal_value_later(Math.round(finalValueLater));
			result.setWealth_now(wealthNow);
			result.setWealth_later(wealthLater);
			result.setCost_of_delay(costOfDelay);

			String apiresponse = gson.toJson(result);
			writer.print(apiresponse);
			writer.close();

		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	/**
	 * Ordinary annuity future value of a monthly SIP. FV = P * [ ((1+i)^n - 1) / i
	 * ]
	 */
	private double sipFutureValue(long monthlyAmount, double monthlyRate, int months) {
		if (monthlyRate == 0) {
			return monthlyAmount * months;
		}
		return monthlyAmount * ((Math.pow(1 + monthlyRate, months) - 1) / monthlyRate);
	}

	@RequestMapping(value = "/tools-and-calculators/cost-of-delay-calculator")
	public String costOfDelayCalculator(HttpServletRequest request, HttpServletResponse response) {
		try {
			String invest_now_age = request.getParameter("invest_now_age");
			String invest_later_age = request.getParameter("invest_later_age");
			String ending_age = request.getParameter("ending_age");
			String sip_amount = request.getParameter("sip_amount");
			String expected_return = request.getParameter("expected_return");

			if (invest_now_age == null || StringHelper.isEmpty(invest_now_age)) {
				invest_now_age = "25";
			}
			if (invest_later_age == null || StringHelper.isEmpty(invest_later_age)) {
				invest_later_age = "30";
			}
			if (ending_age == null || StringHelper.isEmpty(ending_age)) {
				ending_age = "35";
			}
			if (sip_amount == null || StringHelper.isEmpty(sip_amount)) {
				sip_amount = "1000";
			}
			if (expected_return == null || StringHelper.isEmpty(expected_return)) {
				expected_return = "10";
			}

			invest_now_age = invest_now_age.trim();
			invest_later_age = invest_later_age.trim();
			ending_age = ending_age.trim();
			sip_amount = sip_amount.trim();
			expected_return = expected_return.trim();

			request.setAttribute("invest_now_age", invest_now_age);
			request.setAttribute("invest_later_age", invest_later_age);
			request.setAttribute("ending_age", ending_age);
			request.setAttribute("sip_amount", sip_amount);
			request.setAttribute("expected_return", expected_return);
			request.setAttribute("page", "tcalc");
			request.setAttribute("menu", "Cost of Delay Calculator");
			request.setAttribute("jsp", "../calculator/cost-of-delay-calculator.jsp");

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping(value = "/tools-and-calculators/systematic-investment-plan-calculator")
	public String sipCalculator(HttpServletRequest request, HttpServletResponse response) {
		try {
			String sip_amount = request.getParameter("sip_amount");
			String interest_rate = request.getParameter("interest_rate");
			String period = request.getParameter("period");

			if (sip_amount == null || StringHelper.isEmpty(sip_amount)) {
				sip_amount = "25000";
			}
			if (interest_rate == null || StringHelper.isEmpty(interest_rate)) {
				interest_rate = "12.5";
			}
			if (period == null || StringHelper.isEmpty(period)) {
				period = "120";
			}

			sip_amount = sip_amount.trim();
			interest_rate = interest_rate.trim();
			period = period.trim();

			request.setAttribute("sip_amount", sip_amount);
			request.setAttribute("interest_rate", interest_rate);
			request.setAttribute("period", period);
			request.setAttribute("page", "tcalc");
			request.setAttribute("menu", "SIP Calculator");
			request.setAttribute("jsp", "../calculator/sip-calculator.jsp");

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping(value = "/tools-and-calculators/target-amount-sip-calculator")
	public String target_amount_sip_calculator(HttpServletRequest request, HttpServletResponse response) {
		try {
			String wealth_amount = request.getParameter("wealth_amount");
			String inflation_rate = request.getParameter("inflation_rate");
			String expected_return = request.getParameter("expected_return");
			String period = request.getParameter("period");

			if (wealth_amount == null || StringHelper.isEmpty(wealth_amount)) {
				wealth_amount = "250000000";
			}
			if (inflation_rate == null || StringHelper.isEmpty(inflation_rate)) {
				inflation_rate = "5";
			}
			if (expected_return == null || StringHelper.isEmpty(expected_return)) {
				expected_return = "12";
			}
			if (period == null || StringHelper.isEmpty(period)) {
				period = "30";
			}

			wealth_amount = wealth_amount.trim();
			inflation_rate = inflation_rate.trim();
			expected_return = expected_return.trim();
			period = period.trim();

			request.setAttribute("wealth_amount", wealth_amount);
			request.setAttribute("inflation_rate", inflation_rate);
			request.setAttribute("expected_return", expected_return);
			request.setAttribute("period", period);

			request.setAttribute("menu", "target-amount-sip-calculator");
			request.setAttribute("calculator", "target-amount-sip-calculator");

			request.setAttribute("page", "tools-calculators");
			request.setAttribute("subpage", "target-amount-sip-calculator");
			request.setAttribute("jsp", "../calculator/target-amount-sip-calculator.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping(value = "/tools-and-calculators/getTargetAmountSIPCalcResult")
	public void getTargetAmountSIPCalcResult(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		PrintWriter writer = null;
		Gson gson = null;
		String origin = null;
		ApiCalculatorTargetAmountSIPCalc finalResult = null;
		String apiresponse = "";

		try {
			writer = response.getWriter();
			gson = new Gson();
			response.setContentType("text/html");
			origin = request.getHeader("Origin");
			if (origin == null) {
				origin = "";
			}
			finalResult = new ApiCalculatorTargetAmountSIPCalc();

			String wealth_amount = request.getParameter("wealth_amount");
			String inflation_rate = request.getParameter("inflation_rate");
			String expected_return = request.getParameter("expected_return");
			String period = request.getParameter("period");

			if (wealth_amount == null || StringHelper.isEmpty(wealth_amount)) {
				wealth_amount = "";
			}
			if (inflation_rate == null || StringHelper.isEmpty(inflation_rate)) {
				inflation_rate = "";
			}
			if (expected_return == null || StringHelper.isEmpty(expected_return)) {
				expected_return = "";
			}
			if (period == null || StringHelper.isEmpty(period)) {
				period = "";
			}

			wealth_amount = wealth_amount.trim();
			inflation_rate = inflation_rate.trim();
			expected_return = expected_return.trim();
			period = period.trim();

			String[][] param_and_pattern = { { wealth_amount, "SafeString" }, { inflation_rate, "SafeString" },
					{ expected_return, "SafeString" }, { period, "SafeString" } };

			int invalid_index_para = ESAPIValidator.isValidParameters(param_and_pattern);

			if (invalid_index_para > -1) {
				// String apiresponse = "";
				String[] parameters_name = { "wealth_amount", "inflation_rate", "expected_return", "period" };
				String validationErrorMsg = "Invalid " + parameters_name[invalid_index_para];
				finalResult.setStatus(StatusMessage.SuccessCode);
				finalResult.setStatus_msg(StatusMessage.SuccessMessage);
				finalResult.setMsg(validationErrorMsg);
				apiresponse = gson.toJson(finalResult);
				writer.print(apiresponse);
				writer.close();
				return;
			}

			HashMap<String, String> hashMap = new HashMap<String, String>();
			hashMap.put("wealth_amount", wealth_amount);
			hashMap.put("inflation_rate", inflation_rate);
			hashMap.put("expected_return", expected_return);
			hashMap.put("period", period);

			String formattedUrl, result = "";

			formattedUrl = MfApiAccessor.getFormattedUrl(MfApiUrls.getTargetAmountSIPCalcResult, hashMap);
			// System.out.println("formattedUrl-->"+formattedUrl);
			result = HttpPost.SendHttpPost(formattedUrl);
			// System.out.println("result-->"+result);
			ApiCalculatorTargetAmountSIPCalc apiCalculatorTargetAmountSIPCalc = new Gson().fromJson(result,
					ApiCalculatorTargetAmountSIPCalc.class);

			finalResult.setStatus(StatusMessage.SuccessCode);
			finalResult.setStatus_msg(StatusMessage.SuccessMessage);
			finalResult.setMsg(StatusMessage.SuccessMessage);
			finalResult.setWealth_amount(apiCalculatorTargetAmountSIPCalc.getWealth_amount());
			finalResult.setInflation_rate(apiCalculatorTargetAmountSIPCalc.getInflation_rate());
			finalResult.setExpected_return(apiCalculatorTargetAmountSIPCalc.getExpected_return());
			finalResult.setPeriod(apiCalculatorTargetAmountSIPCalc.getPeriod());
			finalResult.setTarget_wealth(apiCalculatorTargetAmountSIPCalc.getTarget_wealth());
			finalResult.setSip_amount(apiCalculatorTargetAmountSIPCalc.getSip_amount());
			finalResult.setInvested_amount(apiCalculatorTargetAmountSIPCalc.getInvested_amount());
			finalResult.setGrowth_amount(apiCalculatorTargetAmountSIPCalc.getGrowth_amount());

			apiresponse = gson.toJson(finalResult);
			writer.print(apiresponse);
			writer.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	/*
	 * @RequestMapping(value = "/tools-and-calculators/getSIPCalcResult") public
	 * void getSIPCalcResult(HttpServletRequest request, HttpServletResponse
	 * response) throws IOException { PrintWriter writer = null; Gson gson = null;
	 * String origin = null; ApiCalculatorSIP finalResult = null; String apiresponse
	 * = "";
	 * 
	 * try { writer = response.getWriter(); gson = new Gson();
	 * response.setContentType("text/html"); origin = request.getHeader("Origin");
	 * if (origin == null) { origin = ""; } finalResult = new ApiCalculatorSIP();
	 * 
	 * String sip_amount = request.getParameter("sip_amount"); String interest_rate
	 * = request.getParameter("interest_rate"); String period =
	 * request.getParameter("period");
	 * 
	 * if (sip_amount == null || StringHelper.isEmpty(sip_amount)) { sip_amount =
	 * ""; } if (interest_rate == null || StringHelper.isEmpty(interest_rate)) {
	 * interest_rate = ""; } if (period == null || StringHelper.isEmpty(period)) {
	 * period = ""; }
	 * 
	 * sip_amount = sip_amount.trim(); interest_rate = interest_rate.trim(); period
	 * = period.trim();
	 * 
	 * 
	 * 
	 * HashMap<String, String> hashMap = new HashMap<String, String>();
	 * hashMap.put("sip_amount", sip_amount); hashMap.put("interest_rate",
	 * interest_rate); hashMap.put("period", period);
	 * 
	 * String formattedUrl, result = "";
	 * 
	 * formattedUrl = MfApiAccessor.getFormattedUrl(MfApiUrls.getSIPCalcResult,
	 * hashMap); System.out.println("formattedUrl-->"+formattedUrl); result =
	 * HttpPost.SendHttpPost(formattedUrl); //
	 * System.out.println("result-->"+result); ApiCalculatorSIP apiCalculatorSIP =
	 * new Gson().fromJson(result, ApiCalculatorSIP.class);
	 * 
	 * finalResult.setStatus(StatusCodesAndMessages.SuccessCode);
	 * finalResult.setStatus_msg(StatusCodesAndMessages.SuccessMessage);
	 * finalResult.setMsg(StatusCodesAndMessages.SuccessMessage);
	 * finalResult.setSip_amount(apiCalculatorSIP.getSip_amount());
	 * finalResult.setInterest_rate(apiCalculatorSIP.getInterest_rate());
	 * finalResult.setPeriod(apiCalculatorSIP.getPeriod());
	 * finalResult.setInvested_amount(apiCalculatorSIP.getInvested_amount());
	 * finalResult.setGrowth_value(apiCalculatorSIP.getGrowth_value());
	 * finalResult.setMaturity_amount(apiCalculatorSIP.getMaturity_amount());
	 * 
	 * apiresponse = gson.toJson(finalResult); writer.print(apiresponse);
	 * writer.close(); } catch (Exception ex) { ex.printStackTrace(); } }
	 */
//	 

	@RequestMapping(value = "/tools-and-calculators/getSIPCalcResult")
	public void getSIPCalcResult(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter writer = null;
		Gson gson = null;
		ApiCalculatorSIP result = null;
		String apirequest = "", apiresponse = "";

		try {
			writer = response.getWriter();
			gson = new Gson();
			response.setContentType("text/html");
			result = new ApiCalculatorSIP();

			String sip_amount = request.getParameter("sip_amount");
			String interest_rate = request.getParameter("interest_rate");
			String period = request.getParameter("period");

			if (sip_amount == null || StringHelper.isEmpty(sip_amount)) {
				sip_amount = "";
			}
			if (interest_rate == null || StringHelper.isEmpty(interest_rate)) {
				interest_rate = "";
			}
			if (period == null || StringHelper.isEmpty(period)) {
				period = "";
			}

			sip_amount = sip_amount.trim();
			interest_rate = interest_rate.trim();
			period = period.trim();

			long sipAmount = Long.parseLong(sip_amount);
			Double interestRate = Double.parseDouble(interest_rate);
			Integer sipMonth = Integer.parseInt(period);

			double annualRate = interestRate / 100.0;

			// Effective monthly rate derived from the annual rate (NOT annual/12)
			double monthlyRate = Math.pow(1 + annualRate, 1.0 / 12.0) - 1.0;

			// Annuity-due future value (SIP invested at start of each month)
			double factor;
			if (monthlyRate == 0) {
				factor = sipMonth;
			} else {
				factor = ((Math.pow(1 + monthlyRate, sipMonth) - 1) / monthlyRate) * (1 + monthlyRate);
			}

			long maturity_amount = Math.round(sipAmount * factor);
			long invested_amount = sipAmount * sipMonth;
			long growth_value = maturity_amount - invested_amount;

			result.setStatus(StatusMessage.SuccessCode);
			result.setStatus_msg(StatusMessage.SuccessMessage);
			result.setMsg(StatusMessage.SuccessMessage);
			result.setSip_amount(sipAmount);
			result.setInterest_rate(interestRate);
			result.setPeriod(sipMonth);
			result.setInvested_amount(invested_amount);
			result.setGrowth_value(growth_value);
			result.setMaturity_amount(maturity_amount);

			apiresponse = gson.toJson(result);

			writer.print(apiresponse);
			writer.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	@RequestMapping(value = "/tools-and-calculators/retirement-planning-calculator")
	public String retirementPlanning(HttpServletRequest request, HttpServletResponse response) {
		try {

			String current_age = request.getParameter("current_age");
			String retirement_age = request.getParameter("retirement_age");
			String wealth_amount = request.getParameter("wealth_amount");
			String inflation_rate = request.getParameter("inflation_rate");
			String expected_return = request.getParameter("expected_return");
			String savings_amount = request.getParameter("savings_amount");

			if (current_age == null || StringHelper.isEmpty(current_age)) {
				current_age = "30";
			}
			if (retirement_age == null || StringHelper.isEmpty(retirement_age)) {
				retirement_age = "60";
			}
			if (wealth_amount == null || StringHelper.isEmpty(wealth_amount)) {
				wealth_amount = "50000000";
			}
			if (inflation_rate == null || StringHelper.isEmpty(inflation_rate)) {
				inflation_rate = "5";
			}
			if (expected_return == null || StringHelper.isEmpty(expected_return)) {
				expected_return = "12.5";
			}
			if (savings_amount == null || StringHelper.isEmpty(savings_amount)) {
				savings_amount = "2500000";
			}

			current_age = current_age.trim();
			retirement_age = retirement_age.trim();
			wealth_amount = wealth_amount.trim();
			inflation_rate = inflation_rate.trim();
			expected_return = expected_return.trim();
			savings_amount = savings_amount.trim();

			request.setAttribute("current_age", current_age);
			request.setAttribute("retirement_age", retirement_age);
			request.setAttribute("wealth_amount", wealth_amount);
			request.setAttribute("inflation_rate", inflation_rate);
			request.setAttribute("expected_return", expected_return);
			request.setAttribute("savings_amount", savings_amount);

			request.setAttribute("menu", "Retirement Planning");
			request.setAttribute("page", "tcalc");
			request.setAttribute("jsp", "../calculator/retirement-planning.jsp");

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping(value = "/tools-and-calculators/children-education-planner")
	public String educationplanner(HttpServletRequest request, HttpServletResponse response) {
		try {

			String childName1 = request.getParameter("childName1");
			String childName2 = request.getParameter("childName2");
			String childAge1 = request.getParameter("childAge1");
			String childAge2 = request.getParameter("childAge2");
			String profEduAge1 = request.getParameter("profEduAge1");
			String profEduAge2 = request.getParameter("profEduAge2");
			String eduAmount1 = request.getParameter("eduAmount1");
			String eduAmount2 = request.getParameter("eduAmount2");
			String priceIncRate = request.getParameter("priceIncRate");
			String rateOfReturn = request.getParameter("rateOfReturn");
			String investAmount = request.getParameter("investAmount");

			if (childName1 == null || StringHelper.isEmpty(childName1)) {
				childName1 = "Raju";
			}
			if (childName2 == null || StringHelper.isEmpty(childName2)) {
				childName2 = "Rani";
			}
			if (childAge1 == null || StringHelper.isEmpty(childAge1)) {
				childAge1 = "10";
			}
			if (childAge2 == null || StringHelper.isEmpty(childAge2)) {
				childAge2 = "5";
			}
			if (profEduAge1 == null || StringHelper.isEmpty(profEduAge1)) {
				profEduAge1 = "20";
			}
			if (profEduAge2 == null || StringHelper.isEmpty(profEduAge2)) {
				profEduAge2 = "20";
			}
			if (eduAmount1 == null || StringHelper.isEmpty(eduAmount1)) {
				eduAmount1 = "500000";
			}
			if (eduAmount2 == null || StringHelper.isEmpty(eduAmount2)) {
				eduAmount2 = "500000";
			}
			if (priceIncRate == null || StringHelper.isEmpty(priceIncRate)) {
				priceIncRate = "5";
			}
			if (rateOfReturn == null || StringHelper.isEmpty(rateOfReturn)) {
				rateOfReturn = "8";
			}
			if (investAmount == null || StringHelper.isEmpty(investAmount)) {
				investAmount = "10000";
			}

			childName1 = childName1.trim();
			childName2 = childName2.trim();
			childAge1 = childAge1.trim();
			childAge2 = childAge2.trim();
			profEduAge1 = profEduAge1.trim();
			profEduAge2 = profEduAge2.trim();
			eduAmount1 = eduAmount1.trim();
			eduAmount2 = eduAmount2.trim();
			priceIncRate = priceIncRate.trim();
			rateOfReturn = rateOfReturn.trim();
			investAmount = investAmount.trim();

			request.setAttribute("childName1", childName1);
			request.setAttribute("childName2", childName2);
			request.setAttribute("childAge1", childAge1);
			request.setAttribute("childAge2", childAge2);
			request.setAttribute("profEduAge1", profEduAge1);
			request.setAttribute("profEduAge2", profEduAge2);
			request.setAttribute("eduAmount1", eduAmount1);
			request.setAttribute("eduAmount2", eduAmount2);
			request.setAttribute("priceIncRate", priceIncRate);
			request.setAttribute("rateOfReturn", rateOfReturn);
			request.setAttribute("investAmount", investAmount);

			request.setAttribute("menu", "Children Education");
			request.setAttribute("page", "tcalc");
			request.setAttribute("jsp", "../calculator/education-planner.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping(value = "/tools-and-calculators/getEducationPlannerResult")
	public void getEducationPlannerResult(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter writer = null;
		Gson gson = null;
		String origin = null;
		ApiCalculatorEducationPlanner finalResult = null;
		String apiresponse = "";

		try {
			writer = response.getWriter();
			gson = new Gson();
			response.setContentType("text/html");
			origin = request.getHeader("Origin");
			if (origin == null) {
				origin = "";
			}
			finalResult = new ApiCalculatorEducationPlanner();

			String child1_name = request.getParameter("child1_name");
			String child2_name = request.getParameter("child2_name");
			String child1_current_age = request.getParameter("child1_current_age");
			String child2_current_age = request.getParameter("child2_current_age");
			String child1_education_age = request.getParameter("child1_education_age");
			String child2_education_age = request.getParameter("child2_education_age");
			String child1_education_amount = request.getParameter("child1_education_amount");
			String child2_education_amount = request.getParameter("child2_education_amount");
			String inflation_rate = request.getParameter("inflation_rate");
			String expected_return = request.getParameter("expected_return");
			String savings_amount = request.getParameter("savings_amount");

			if (child1_name == null || StringHelper.isEmpty(child1_name)) {
				child1_name = "";
			}
			if (child2_name == null || StringHelper.isEmpty(child2_name)) {
				child2_name = "";
			}
			if (child1_current_age == null || StringHelper.isEmpty(child1_current_age)) {
				child1_current_age = "";
			}
			if (child2_current_age == null || StringHelper.isEmpty(child2_current_age)) {
				child2_current_age = "";
			}
			if (child1_education_age == null || StringHelper.isEmpty(child1_education_age)) {
				child1_education_age = "";
			}
			if (child2_education_age == null || StringHelper.isEmpty(child2_education_age)) {
				child2_education_age = "";
			}
			if (child1_education_amount == null || StringHelper.isEmpty(child1_education_amount)) {
				child1_education_amount = "";
			}
			if (child2_education_amount == null || StringHelper.isEmpty(child2_education_amount)) {
				child2_education_amount = "";
			}
			if (inflation_rate == null || StringHelper.isEmpty(inflation_rate)) {
				inflation_rate = "";
			}
			if (expected_return == null || StringHelper.isEmpty(expected_return)) {
				expected_return = "";
			}
			if (savings_amount == null || StringHelper.isEmpty(savings_amount)) {
				savings_amount = "";
			}

			child1_name = child1_name.trim();
			child2_name = child2_name.trim();
			child1_current_age = child1_current_age.trim();
			child2_current_age = child2_current_age.trim();
			child1_education_age = child1_education_age.trim();
			child2_education_age = child2_education_age.trim();
			child1_education_amount = child1_education_amount.trim();
			child2_education_amount = child2_education_amount.trim();
			inflation_rate = inflation_rate.trim();
			expected_return = expected_return.trim();
			savings_amount = savings_amount.trim();

			/* ESAPI VALIDATION */
			String[][] param_and_pattern = { { child1_name, "SafeString" }, { child2_name, "SafeString" },
					{ child1_current_age, "SafeString" }, { child2_current_age, "SafeString" },
					{ child1_education_age, "SafeString" }, { child2_education_age, "SafeString" },
					{ child1_education_amount, "SafeString" }, { child2_education_amount, "SafeString" },
					{ inflation_rate, "SafeString" }, { expected_return, "SafeString" },
					{ savings_amount, "SafeString" } };

			int invalid_index_para = ESAPIValidator.isValidParameters(param_and_pattern);

			if (invalid_index_para > -1) {
				// String apiresponse = "";
				String[] parameters_name = { "child1_name", "child2_name", "child1_current_age", "child2_current_age",
						"child1_education_age", "child2_education_age", "child1_education_amount",
						"child2_education_amount", "inflation_rate", "expected_return", "savings_amount" };
				String validationErrorMsg = "Invalid " + parameters_name[invalid_index_para];
				finalResult.setStatus(StatusMessage.SuccessCode);
				finalResult.setStatus_msg(StatusMessage.SuccessMessage);
				finalResult.setMsg(validationErrorMsg);
				apiresponse = gson.toJson(finalResult);
				writer.print(apiresponse);/* Esapi FailureResponse */
				writer.close();
				return;
			}
			/* ESAPI VALIDATION */

			HashMap<String, String> hashMap = new HashMap<String, String>();
			hashMap.put("child1_name", child1_name);
			hashMap.put("child2_name", child2_name);
			hashMap.put("child1_current_age", child1_current_age);
			hashMap.put("child2_current_age", child2_current_age);
			hashMap.put("child1_education_age", child1_education_age);
			hashMap.put("child2_education_age", child1_education_age);
			hashMap.put("child1_education_amount", child1_education_amount);
			hashMap.put("child2_education_amount", child2_education_amount);
			hashMap.put("inflation_rate", inflation_rate);
			hashMap.put("expected_return", expected_return);
			hashMap.put("savings_amount", savings_amount);

			String formattedUrl, result = "";

			formattedUrl = MfApiAccessor.getFormattedUrl(MfApiUrls.getEducationPlannerResult, hashMap);
			// System.out.println("formattedUrl-->"+formattedUrl);
			result = HttpPost.SendHttpPost(formattedUrl);
			// System.out.println("result-->"+result);
			ApiCalculatorEducationPlanner apiCalculatorEducationPlanner = new Gson().fromJson(result,
					ApiCalculatorEducationPlanner.class);

			finalResult.setStatus(StatusCodesAndMessages.SuccessCode);
			finalResult.setStatus_msg(StatusCodesAndMessages.SuccessMessage);
			finalResult.setMsg(StatusCodesAndMessages.SuccessMessage);
			finalResult.setChild1_name(apiCalculatorEducationPlanner.getChild1_name());
			finalResult.setChild2_name(apiCalculatorEducationPlanner.getChild2_name());
			finalResult.setChild1_current_age(apiCalculatorEducationPlanner.getChild1_current_age());
			finalResult.setChild2_current_age(apiCalculatorEducationPlanner.getChild2_current_age());
			finalResult.setChild1_education_age(apiCalculatorEducationPlanner.getChild1_education_age());
			finalResult.setChild2_education_age(apiCalculatorEducationPlanner.getChild2_education_age());
			finalResult.setChild1_education_amount(apiCalculatorEducationPlanner.getChild1_education_amount());
			finalResult.setChild2_education_amount(apiCalculatorEducationPlanner.getChild2_education_amount());
			finalResult.setInflation_rate(apiCalculatorEducationPlanner.getInflation_rate());
			finalResult.setExpected_return(apiCalculatorEducationPlanner.getExpected_return());
			finalResult.setSavings_amount(apiCalculatorEducationPlanner.getSavings_amount());
			finalResult.setTotal_education_amount(apiCalculatorEducationPlanner.getTotal_education_amount());
			finalResult.setChild1_prof_education_age(apiCalculatorEducationPlanner.getChild1_prof_education_age());
			finalResult.setChild2_prof_education_age(apiCalculatorEducationPlanner.getChild2_prof_education_age());
			finalResult.setChild1_inflation_adjust_education_amount(
					apiCalculatorEducationPlanner.getChild1_inflation_adjust_education_amount());
			finalResult.setChild2_inflation_adjust_education_amount(
					apiCalculatorEducationPlanner.getChild2_inflation_adjust_education_amount());
			finalResult.setToal_inflation_adjust_education_amount(
					apiCalculatorEducationPlanner.getToal_inflation_adjust_education_amount());
			finalResult.setChild1_savings_amount(apiCalculatorEducationPlanner.getChild1_savings_amount());
			finalResult.setChild2_savings_amount(apiCalculatorEducationPlanner.getChild2_savings_amount());
			finalResult.setTotal_savings_amount(apiCalculatorEducationPlanner.getTotal_savings_amount());
			finalResult.setChild1_monthly_savings(apiCalculatorEducationPlanner.getChild1_monthly_savings());
			finalResult.setChild2_monthly_savings(apiCalculatorEducationPlanner.getChild2_monthly_savings());
			finalResult.setTotal_monthly_savings(apiCalculatorEducationPlanner.getTotal_monthly_savings());

			apiresponse = gson.toJson(finalResult);
			writer.print(apiresponse);
			writer.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	@RequestMapping(value = "/tools-and-calculators/networth-calculator")
	public String networth(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setAttribute("page", "calculators");
			request.setAttribute("calculator", "car-loan-emi-calculator");
			request.setAttribute("calculator", "menu");
			request.setAttribute("menu", "networth-calculator");
			request.setAttribute("jsp", "../calculator/networth_calculator.jsp");
			/* request.setAttribute("jsp", "../common/under-maintenance.jsp"); */
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	/*
	 * @RequestMapping(value = "/tools-and-calculators/getNetworthCalcResult")
	 * public void getNetworthCalcResult(HttpServletRequest request,
	 * HttpServletResponse response) throws IOException { PrintWriter writer = null;
	 * Gson gson = null; ApiCalculatorNetworth finalresult = null; String apirequest
	 * = "", apiresponse = "";
	 * 
	 * try { writer = response.getWriter(); gson = new Gson();
	 * response.setContentType("text/html"); finalresult = new
	 * ApiCalculatorNetworth();
	 * 
	 * String shares_equity_value = request.getParameter("shares_equity_value");
	 * String fixed_income_value = request.getParameter("fixed_income_value");
	 * String cash_value = request.getParameter("cash_value"); String property_value
	 * = request.getParameter("property_value"); String gold_value =
	 * request.getParameter("gold_value"); String other_assets_value =
	 * request.getParameter("other_assets_value"); String home_loan_value =
	 * request.getParameter("home_loan_value"); String personal_other_loan_value =
	 * request.getParameter("personal_other_loan_value"); String income_tax_value =
	 * request.getParameter("income_tax_value"); String outstanding_bill_value =
	 * request.getParameter("outstanding_bill_value"); String credit_card_due_value
	 * = request.getParameter("credit_card_due_value"); String
	 * other_liabilities_value = request.getParameter("other_liabilities_value");
	 * 
	 * if (shares_equity_value == null || StringHelper.isEmpty(shares_equity_value))
	 * { shares_equity_value = ""; } if (fixed_income_value == null ||
	 * StringHelper.isEmpty(fixed_income_value)) { fixed_income_value = ""; } if
	 * (cash_value == null || StringHelper.isEmpty(cash_value)) { cash_value = ""; }
	 * if (property_value == null || StringHelper.isEmpty(property_value)) {
	 * property_value = ""; } if (gold_value == null ||
	 * StringHelper.isEmpty(gold_value)) { gold_value = ""; } if (other_assets_value
	 * == null || StringHelper.isEmpty(other_assets_value)) { other_assets_value =
	 * ""; } if (home_loan_value == null || StringHelper.isEmpty(home_loan_value)) {
	 * home_loan_value = ""; } if (personal_other_loan_value == null ||
	 * StringHelper.isEmpty(personal_other_loan_value)) { personal_other_loan_value
	 * = ""; } if (income_tax_value == null ||
	 * StringHelper.isEmpty(income_tax_value)) { income_tax_value = ""; } if
	 * (outstanding_bill_value == null ||
	 * StringHelper.isEmpty(outstanding_bill_value)) { outstanding_bill_value = "";
	 * } if (credit_card_due_value == null ||
	 * StringHelper.isEmpty(credit_card_due_value)) { credit_card_due_value = ""; }
	 * if (other_liabilities_value == null ||
	 * StringHelper.isEmpty(other_liabilities_value)) { other_liabilities_value =
	 * ""; }
	 * 
	 * shares_equity_value = shares_equity_value.trim(); fixed_income_value =
	 * fixed_income_value.trim(); cash_value = cash_value.trim(); property_value =
	 * property_value.trim(); gold_value = gold_value.trim(); other_assets_value =
	 * other_assets_value.trim(); home_loan_value = home_loan_value.trim();
	 * personal_other_loan_value = personal_other_loan_value.trim();
	 * income_tax_value = income_tax_value.trim(); outstanding_bill_value =
	 * outstanding_bill_value.trim(); credit_card_due_value =
	 * credit_card_due_value.trim(); other_liabilities_value =
	 * other_liabilities_value.trim();
	 * 
	 * ESAPI VALIDATION String[][] param_and_pattern = { { shares_equity_value,
	 * "SafeString" }, { fixed_income_value, "SafeString" }, { cash_value,
	 * "SafeString" }, { property_value, "SafeString" }, { gold_value, "SafeString"
	 * }, { other_assets_value, "SafeString" }, { home_loan_value, "SafeString" }, {
	 * personal_other_loan_value, "SafeString" }, { income_tax_value, "SafeString"
	 * }, { outstanding_bill_value, "SafeString" }, { credit_card_due_value,
	 * "SafeString", }, { other_liabilities_value, "SafeString" } };
	 * 
	 * int invalid_index_para = ESAPIValidator.isValidParameters(param_and_pattern);
	 * 
	 * if (invalid_index_para > -1) { // String apiresponse = ""; String[]
	 * parameters_name = { "shares_equity_value", "fixed_income_value",
	 * "cash_value", "property_value", "gold_value", "other_assets_value",
	 * "home_loan_value", "personal_other_loan_value", "income_tax_value",
	 * "outstanding_bill_value", "credit_card_due_value", "other_liabilities_value"
	 * }; String validationErrorMsg = "Invalid " +
	 * parameters_name[invalid_index_para];
	 * finalresult.setStatus(StatusMessage.SuccessCode);
	 * finalresult.setStatus_msg(StatusMessage.SuccessMessage);
	 * finalresult.setMsg(validationErrorMsg); apiresponse =
	 * gson.toJson(finalresult); writer.print(apiresponse); Esapi FailureResponse
	 * writer.close(); return; } ESAPI VALIDATION
	 * 
	 * HashMap<String, String> hashMap = new HashMap<String, String>();
	 * hashMap.put("shares_equity_value", shares_equity_value);
	 * hashMap.put("fixed_income_value", fixed_income_value);
	 * hashMap.put("cash_value", cash_value); hashMap.put("property_value",
	 * property_value); hashMap.put("gold_value", gold_value);
	 * hashMap.put("other_assets_value", other_assets_value);
	 * hashMap.put("home_loan_value", home_loan_value);
	 * hashMap.put("personal_other_loan_value", personal_other_loan_value);
	 * hashMap.put("income_tax_value", income_tax_value);
	 * hashMap.put("outstanding_bill_value", outstanding_bill_value);
	 * hashMap.put("credit_card_due_value", credit_card_due_value);
	 * hashMap.put("other_liabilities_value", other_liabilities_value);
	 * hashMap.put("key", "b83703f5-fad3-45ce-b436-8a4ceb4b0e20");
	 * 
	 * String formattedUrl, result = "";
	 * 
	 * formattedUrl = MfApiAccessor.getFormattedUrl(MfApiUrls.getNetworthCalcResult,
	 * hashMap); // System.out.println("formattedUrl-->"+formattedUrl); result =
	 * HttpPost.SendHttpPost(formattedUrl); System.out.println("result-->" +
	 * result); ApiCalculatorNetworth apiCalculatorNetworth = new
	 * Gson().fromJson(result, ApiCalculatorNetworth.class);
	 * 
	 * apiresponse = gson.toJson(apiCalculatorNetworth); writer.print(apiresponse);
	 * writer.close(); } catch (Exception ex) { ex.printStackTrace(); } }
	 */
	
	
	
	
	@RequestMapping(value="/tools-and-calculators/getNetworthCalcResult")
	public void getNetworthCalcResult(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		PrintWriter writer = null;		
		Gson gson = null;
		ApiCalculatorNetworth result = null;
		String apirequest = "",apiresponse = "";
		
		try 
		{	
			writer = response.getWriter();
			gson = new Gson();
			response.setContentType("text/html");
			result = new ApiCalculatorNetworth();
			
			String shares_equity_value = request.getParameter("shares_equity_value");
	     	String fixed_income_value = request.getParameter("fixed_income_value");
            String cash_value = request.getParameter("cash_value");
            String property_value = request.getParameter("property_value");
            String gold_value = request.getParameter("gold_value");
	     	String other_assets_value = request.getParameter("other_assets_value");
            String home_loan_value = request.getParameter("home_loan_value");
            String personal_other_loan_value = request.getParameter("personal_other_loan_value");
            String income_tax_value = request.getParameter("income_tax_value");
	     	String outstanding_bill_value = request.getParameter("outstanding_bill_value");
            String credit_card_due_value = request.getParameter("credit_card_due_value");
            String other_liabilities_value = request.getParameter("other_liabilities_value");
            
			if(shares_equity_value == null || StringHelper.isEmpty(shares_equity_value)){shares_equity_value = "";}
            if(fixed_income_value == null || StringHelper.isEmpty(fixed_income_value)){fixed_income_value = "";}
            if(cash_value == null || StringHelper.isEmpty(cash_value)){cash_value = "";}
            if(property_value == null || StringHelper.isEmpty(property_value)){property_value = "";}
            if(gold_value == null || StringHelper.isEmpty(gold_value)){gold_value = "";}
            if(other_assets_value == null || StringHelper.isEmpty(other_assets_value)){other_assets_value = "";}
            if(home_loan_value == null || StringHelper.isEmpty(home_loan_value)){home_loan_value = "";}
            if(personal_other_loan_value == null || StringHelper.isEmpty(personal_other_loan_value)){personal_other_loan_value = "";}
            if(income_tax_value == null || StringHelper.isEmpty(income_tax_value)){income_tax_value = "";}
            if(outstanding_bill_value == null || StringHelper.isEmpty(outstanding_bill_value)){outstanding_bill_value = "";}
            if(credit_card_due_value == null || StringHelper.isEmpty(credit_card_due_value)){credit_card_due_value = "";}
            if(other_liabilities_value == null || StringHelper.isEmpty(other_liabilities_value)){other_liabilities_value = "";}
            
            shares_equity_value = shares_equity_value.trim();
            fixed_income_value = fixed_income_value.trim();
            cash_value = cash_value.trim();
            property_value = property_value.trim();
            gold_value = gold_value.trim();
            other_assets_value = other_assets_value.trim();
            home_loan_value = home_loan_value.trim();
            personal_other_loan_value = personal_other_loan_value.trim();
            income_tax_value = income_tax_value.trim();
            outstanding_bill_value = outstanding_bill_value.trim();
            credit_card_due_value = credit_card_due_value.trim();
            other_liabilities_value = other_liabilities_value.trim();
            
            long shares_assets = Long.parseLong(shares_equity_value);
        	long fixed_income_assets = Long.parseLong(fixed_income_value);
        	long cash_bank_assets = Long.parseLong(cash_value);
        	long property_assets = Long.parseLong(property_value);
        	long gold_assets = Long.parseLong(gold_value);
        	long others_assets = Long.parseLong(other_assets_value);
        	long home_loan = Long.parseLong(home_loan_value);
        	long personal_loan = Long.parseLong(personal_other_loan_value);
        	long income_tax = Long.parseLong(income_tax_value);
        	long outstanding_bills = Long.parseLong(outstanding_bill_value);
        	long credit_card = Long.parseLong(credit_card_due_value);
        	long other_liabilities = Long.parseLong(other_liabilities_value);
        	
        	long total_assets = shares_assets + fixed_income_assets + cash_bank_assets + property_assets + gold_assets + others_assets;
        	long total_liabillities = home_loan + personal_loan + income_tax + outstanding_bills + credit_card + other_liabilities;
        	long total_networth = total_assets - total_liabillities;
            
        	result.setStatus(StatusMessage.SuccessCode);
        	result.setStatus_msg(StatusMessage.SuccessMessage);
        	result.setMsg(StatusMessage.SuccessMessage);
        	result.setShares_equity_value(shares_assets);
        	result.setFixed_income_value(fixed_income_assets);
        	result.setCash_value(cash_bank_assets);
        	result.setProperty_value(property_assets);
        	result.setGold_value(gold_assets);
        	result.setOther_assets_value(others_assets);
        	result.setHome_loan_value(home_loan);
        	result.setPersonal_other_loan_value(personal_loan);
        	result.setIncome_tax_value(income_tax);
        	result.setOutstanding_bill_value(outstanding_bills);
        	result.setCredit_card_due_value(credit_card);
        	result.setOther_liabilities_value(other_liabilities);
        	result.setTotal_assets(total_assets);
        	result.setTotal_liabillities(total_liabillities);
        	result.setTotal_networth(total_networth);
        	
            apiresponse = gson.toJson(result);
    		writer.print(apiresponse);
		    writer.close();
		} 
		catch (Exception ex) 
		{
			ex.printStackTrace();
		}
	}

	
	
	
	@RequestMapping(value="/tools-and-calculators/home-loan-emi-calculator")
	public String calculators(HttpServletRequest request, HttpServletResponse response) 
	{
		try 
		{
			 String loan_amount = request.getParameter("loan_amount");
			 String interest_rate = request.getParameter("interest_rate");
			 String loan_tenure_type = request.getParameter("loan_tenure_type");
			 String loan_tenure = request.getParameter("loan_tenure");
			
			 if(loan_amount == null || StringHelper.isEmpty(loan_amount)){loan_amount = "2500000";}
			 if(interest_rate == null || StringHelper.isEmpty(interest_rate)){interest_rate = "12.5";}
			 if(loan_tenure_type == null || StringHelper.isEmpty(loan_tenure_type)){loan_tenure_type = "year";}
			 if(loan_tenure == null || StringHelper.isEmpty(loan_tenure)){loan_tenure = "20";}
			 
			 loan_amount = loan_amount.trim();
			 interest_rate = interest_rate.trim();
			 loan_tenure_type = loan_tenure_type.trim();
			 loan_tenure = loan_tenure.trim();
			 
			 request.setAttribute("loan_amount", loan_amount);
			 request.setAttribute("interest_rate", interest_rate);
			 request.setAttribute("loan_tenure_type", loan_tenure_type);
			 request.setAttribute("loan_tenure", loan_tenure);
			
			request.setAttribute("page", "calculators");
			request.setAttribute("calculator", "home-loan-emi-calculator");
			request.setAttribute("calculator", "menu");
			request.setAttribute("menu", "home-loan-emi-calculator");
			request.setAttribute("jsp", "../calculator/emi_home_loan_calculator.jsp");
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return "layout/layout";
	}
	
	
	@RequestMapping(value="/tools-and-calculators/getEMICalcResult")
	public void getEMICalcResult(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		PrintWriter writer = null;		
		Gson gson = null;
		ApiCalculatorEMI result = null;
		String apirequest = "",apiresponse = "";
		
		try 
		{	
			writer = response.getWriter();
			gson = new Gson();
			response.setContentType("text/html");
			result = new ApiCalculatorEMI();
			
			String loan_amount = request.getParameter("loan_amount");
            String interest_rate = request.getParameter("interest_rate");
            String loan_tenure_type = request.getParameter("loan_tenure_type");
            String loan_tenure = request.getParameter("loan_tenure");
            
            if(loan_amount == null || StringHelper.isEmpty(loan_amount)){loan_amount = "";}
            if(interest_rate == null || StringHelper.isEmpty(interest_rate)){interest_rate = "";}
            if(loan_tenure_type == null || StringHelper.isEmpty(loan_tenure_type)){loan_tenure_type = "";}
            if(loan_tenure == null || StringHelper.isEmpty(loan_tenure)){loan_tenure = "";}
            
            loan_amount = loan_amount.trim();
            interest_rate = interest_rate.trim();
            loan_tenure_type = loan_tenure_type.trim();
            loan_tenure = loan_tenure.trim();

            long principal = Long.parseLong(loan_amount);
        	Double rate = Double.parseDouble(interest_rate);
        	Integer tenure = Integer.parseInt(loan_tenure);
        	Integer period = tenure;
        	
        	if(loan_tenure_type.equalsIgnoreCase("year"))
        	{
        		period = period * 12;
        	}
        	
        	Double numerator = principal * (rate / 1200);
        	Double power = 1 + (rate / 1200);
        	Double powerof = Math.pow(power, period);
        	Double denominator = 1 - (1 / powerof);
        	Double emi = Math.ceil(numerator / denominator);
        	long monthly_emi = Math.round(numerator / denominator);
        	long total_amount = Math.round(monthly_emi * period);
        	long total_interest = Math.round(total_amount - principal);
            
        	result.setStatus(StatusMessage.SuccessCode);
        	result.setStatus_msg(StatusMessage.SuccessMessage);
        	result.setMsg(StatusMessage.SuccessMessage);
        	result.setLoan_amount(principal);
        	result.setInterest_rate(rate);
        	result.setLoan_tenure_type(loan_tenure_type);
        	result.setLoan_tenure(tenure);
        	result.setEmi(monthly_emi);
        	result.setTotal_interest(total_interest);
        	result.setTotal_amount(total_amount);
        	
            apiresponse = gson.toJson(result);
    		writer.print(apiresponse);
		    writer.close();
		} 
		catch (Exception ex) 
		{
			ex.printStackTrace();
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/tools-and-calculators/mutual-fund-sip-calculator-step-up")
	public String mutual_fund_sip_calculator_step_up(HttpServletRequest request, HttpServletResponse response) {
		try {

			String sip_amount = request.getParameter("sip_amount");
			String interest_rate = request.getParameter("interest_rate");
			String period = request.getParameter("period");
			String sip_stepup_value = request.getParameter("sip_stepup_value");

			if (sip_amount == null || StringHelper.isEmpty(sip_amount)) {
				sip_amount = "25000";
			}
			if (interest_rate == null || StringHelper.isEmpty(interest_rate)) {
				interest_rate = "12.5";
			}
			if (period == null || StringHelper.isEmpty(period)) {
				period = "120";
			}
			if (sip_stepup_value == null || StringHelper.isEmpty(sip_stepup_value)) {
				sip_stepup_value = "10";
			}

			sip_amount = sip_amount.trim();
			interest_rate = interest_rate.trim();
			period = period.trim();
			sip_stepup_value = sip_stepup_value.trim();

			request.setAttribute("sip_amount", sip_amount);
			request.setAttribute("interest_rate", interest_rate);
			request.setAttribute("period", period);
			request.setAttribute("sip_stepup_value", sip_stepup_value);

			request.setAttribute("page", "tools-calculators");
			request.setAttribute("subpage", "step-up-sip-calculator");
			request.setAttribute("jsp", "../calculator/step_up_sip_calculator.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return "layout/layout";
	}

	@RequestMapping(value = "/tools-and-calculators/getSIPCalcStepUpResult")
	public void getSIPCalcStepUpResult(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter writer = null;
		Gson gson = null;
		String origin = null;
		ApiCalculatorSIPStepUp finalResult = null;
		List<ApiCalculatorSIPStepUpTable> list = null;
		ApiCalculatorSIPStepUpTable sip_table = null;
		String apiresponse = "";

		try {
			writer = response.getWriter();
			gson = new Gson();
			response.setContentType("text/html");
			origin = request.getHeader("Origin");
			if (origin == null) {
				origin = "";
			}
			finalResult = new ApiCalculatorSIPStepUp();
			list = new ArrayList<ApiCalculatorSIPStepUpTable>();

			String sip_amount = request.getParameter("sip_amount");
			String interest_rate = request.getParameter("interest_rate");
			String period = request.getParameter("period");
			String sip_stepup_value = request.getParameter("sip_stepup_value");

			if (sip_amount == null || StringHelper.isEmpty(sip_amount)) {
				sip_amount = "";
			}
			if (interest_rate == null || StringHelper.isEmpty(interest_rate)) {
				interest_rate = "";
			}
			if (period == null || StringHelper.isEmpty(period)) {
				period = "";
			}
			if (sip_stepup_value == null || StringHelper.isEmpty(sip_stepup_value)) {
				sip_stepup_value = "";
			}

			sip_amount = sip_amount.trim();
			interest_rate = interest_rate.trim();
			period = period.trim();
			sip_stepup_value = sip_stepup_value.trim();

			/* ESAPI VALIDATION */
			String[][] param_and_pattern = { { sip_amount, "SafeString" }, { interest_rate, "SafeString" },
					{ period, "SafeString" }, { sip_stepup_value, "SafeString" } };

			int invalid_index_para = ESAPIValidator.isValidParameters(param_and_pattern);
			// System.out.println(invalid_index_para);
			if (invalid_index_para > -1) {
				// String apiresponse = "";
				String[] parameters_name = { "sip_amount", "interest_rate", "period", "sip_stepup_value" };
				String validationErrorMsg = "Invalid " + parameters_name[invalid_index_para];
				finalResult.setStatus(StatusMessage.SuccessCode);
				finalResult.setStatus_msg(StatusMessage.SuccessMessage);
				finalResult.setMsg(validationErrorMsg);
				apiresponse = gson.toJson(finalResult);
				writer.print(apiresponse);/* Esapi FailureResponse */
				writer.close();
				return;
			}
			/* ESAPI VALIDATION */

			HashMap<String, String> hashMap = new HashMap<String, String>();
			hashMap.put("sip_amount", sip_amount);
			hashMap.put("interest_rate", interest_rate);
			hashMap.put("period", period);
			hashMap.put("sip_stepup_value", sip_stepup_value);

			String formattedUrl, result = "";

			formattedUrl = MfApiAccessor.getFormattedUrl(MfApiUrls.getSIPCalcStepUpResult, hashMap);
			// System.out.println("formattedUrl-->"+formattedUrl);
			result = HttpPost.SendHttpPost(formattedUrl);
			// System.out.println("result-->"+result);
			ApiCalculatorSIPStepUp apiCalculatorSIPStepUp = new Gson().fromJson(result, ApiCalculatorSIPStepUp.class);

			finalResult.setStatus(StatusMessage.SuccessCode);
			finalResult.setStatus_msg(StatusMessage.SuccessMessage);
			finalResult.setMsg(StatusMessage.SuccessMessage);
			finalResult.setSip_amount(apiCalculatorSIPStepUp.getSip_amount());
			finalResult.setInterest_rate(apiCalculatorSIPStepUp.getInterest_rate());
			finalResult.setPeriod(apiCalculatorSIPStepUp.getPeriod());
			finalResult.setSip_stepup_value(apiCalculatorSIPStepUp.getSip_stepup_value());
			finalResult.setInvested_amount(apiCalculatorSIPStepUp.getInvested_amount());
			finalResult.setGrowth_value(apiCalculatorSIPStepUp.getGrowth_value());
			finalResult.setMaturity_amount(apiCalculatorSIPStepUp.getMaturity_amount());
			finalResult.setStepup_invested_amount(apiCalculatorSIPStepUp.getStepup_invested_amount());
			finalResult.setStepup_growth_value(apiCalculatorSIPStepUp.getStepup_growth_value());
			finalResult.setStepup_maturity_amount(apiCalculatorSIPStepUp.getStepup_maturity_amount());
			finalResult.setList(apiCalculatorSIPStepUp.getList());

			apiresponse = gson.toJson(finalResult);
			writer.print(apiresponse);
			writer.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	@RequestMapping(value = "/tools-and-calculators/lumpsum-target-calculator")
	public String targetAmountBasedLumpsumInvestment(HttpServletRequest request, HttpServletResponse response) {
		try {

			String target_amount = request.getParameter("target_amount");
			String years = request.getParameter("years");
			String expected_return = request.getParameter("expected_return");

			if (target_amount == null || StringHelper.isEmpty(target_amount)) {
				target_amount = "50000000";
			}
			if (years == null || StringHelper.isEmpty(years)) {
				years = "30";
			}
			if (expected_return == null || StringHelper.isEmpty(expected_return)) {
				expected_return = "12";
			}

			target_amount = target_amount.trim();
			years = years.trim();
			expected_return = expected_return.trim();

			request.setAttribute("target_amount", target_amount);
			request.setAttribute("years", years);
			request.setAttribute("expected_return", expected_return);

			request.setAttribute("page", "calculators");
			request.setAttribute("menu", "lumpsum-target-calculator");
			request.setAttribute("jsp", "../calculator/lumpsum_target_calculator.jsp");

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping(value = "/tools-and-calculators/getLumpsumTargetCalcResult")
	public void getLumpsumTargetCalcResult(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		// source website:
		// http://jagoinvestor.com/calculators/html/Increasing-SIP-Calculator.html
		// Model design
		// http://www.icicipruamc.com/InvestCorrectly/Basics-of-Mutual-Funds/whats-your-number
		PrintWriter writer = null;
		Gson gson = null;
		String origin = null;
		ApiCalculatorLumpsumTarget finalresult = null;
		String apiresponse = "";

		try {
			writer = response.getWriter();
			gson = new Gson();
			response.setContentType("text/html");
			origin = request.getHeader("Origin");
			if (origin == null) {
				origin = "";
			}
			finalresult = new ApiCalculatorLumpsumTarget();

			String target_amount = request.getParameter("target_amount");
			String years = request.getParameter("years");
			String expected_return = request.getParameter("expected_return");

			if (target_amount == null || StringHelper.isEmpty(target_amount)) {
				target_amount = "";
			}
			if (years == null || StringHelper.isEmpty(years)) {
				years = "";
			}
			if (expected_return == null || StringHelper.isEmpty(expected_return)) {
				expected_return = "";
			}

			target_amount = target_amount.trim();
			years = years.trim();
			expected_return = expected_return.trim();

			/* ESAPI VALIDATION */
			String[][] param_and_pattern = { { target_amount, "SafeString" }, { years, "SafeString" },
					{ expected_return, "SafeString" } };

			int invalid_index_para = ESAPIValidator.isValidParameters(param_and_pattern);

			if (invalid_index_para > -1) {
				// String apiresponse = "";
				String[] parameters_name = { "target_amount", "years", "inflation_rate", "expected_return" };
				String validationErrorMsg = "Invalid " + parameters_name[invalid_index_para];
				finalresult.setStatus(StatusMessage.SuccessCode);
				finalresult.setStatus_msg(StatusMessage.SuccessMessage);
				finalresult.setMsg(validationErrorMsg);
				apiresponse = gson.toJson(finalresult);
				writer.print(apiresponse);/* Esapi FailureResponse */
				writer.close();
				return;
			}
			/* ESAPI VALIDATION */

			HashMap<String, String> hashMap = new HashMap<String, String>();
			hashMap.put("target_amount", target_amount);
			hashMap.put("years", years);
			hashMap.put("expected_return", expected_return);

			String formattedUrl, result = "";

			formattedUrl = MfApiAccessor.getFormattedUrl(MfApiUrls.getLumpsumTargetCalcResult, hashMap);
			// System.out.println("formattedUrl-->"+formattedUrl);
			result = HttpPost.SendHttpPost(formattedUrl);
			// System.out.println("result-->"+result);
			ApiCalculatorLumpsumTarget apiCalculatorLumpsumTarget = new Gson().fromJson(result,
					ApiCalculatorLumpsumTarget.class);

			finalresult.setStatus(StatusMessage.SuccessCode);
			finalresult.setStatus_msg(StatusMessage.SuccessMessage);
			finalresult.setMsg(StatusMessage.SuccessMessage);

			finalresult.setTarget_amount(apiCalculatorLumpsumTarget.getTarget_amount());
			finalresult.setExpected_return(apiCalculatorLumpsumTarget.getExpected_return());
			finalresult.setYears(apiCalculatorLumpsumTarget.getYears());
			finalresult.setLumpsum_amount(apiCalculatorLumpsumTarget.getLumpsum_amount());

			apiresponse = gson.toJson(finalresult);
			writer.print(apiresponse);
			writer.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

}
