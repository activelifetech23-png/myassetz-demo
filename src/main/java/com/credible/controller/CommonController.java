package com.credible.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.binary.Base64;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.HttpClientBuilder;
import org.hibernate.internal.util.StringHelper;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.credible.model.Users;
import com.credible.response.CommonResponse;
import com.credible.utils.MfApiAccessor;
import com.credible.utils.MfApiUrls;
import com.credible.utils.SendEmailUtil;
import com.credible.utils.StatusCodesAndMessages;
import com.credible.utils.StatusMessage;
import com.google.gson.Gson;

@Controller
public class CommonController {
	
	@Autowired
	SendEmailUtil sendEmailUtil;
	
	
	
	
	@RequestMapping(value="/clientValidateLogin", method= RequestMethod.POST)
	public void clientValidateLogin(HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		PrintWriter writer = response.getWriter();
		response.setContentType("text/html");
		Gson gson = new Gson();
		CommonResponse commonResponse = new CommonResponse();
		
		try
		{	
			String mobile_pan =  request.getParameter("txt_pan");
	 		String password = request.getParameter("txt_pass");
	 		String client_name = "vbuildwealth";
	 		
	 		if(mobile_pan == null){mobile_pan= "";}
	 		if(password == null){password= "";}
	 		
	 		mobile_pan = mobile_pan.trim();
	 		password = password.trim();
	 		
	 		
	 		String formattedUrl, result = "";
	        
	     	HashMap<String, String> hashMap = new HashMap<String, String>();
	        hashMap.put("pan_mobile", mobile_pan);
	        hashMap.put("password", password);
	        hashMap.put("key", "32c8f66c-1058-432e-9a63-073f2152d654");
	     	
	        formattedUrl = MfApiAccessor.getFormattedUrl(MfApiUrls.getValidateLogin, hashMap);
	 		result = com.credible.utils.HttpPost.SendHttpPost(formattedUrl);
	 		//System.out.println("result-->"+result);
	 		CommonResponse commonResponse1 = new Gson().fromJson(result, CommonResponse.class);
	 		
			//Users user = mutualFundCommonDAO.validateLogin(mobile_pan, password, client_name);
	 		Users user = commonResponse1.getUser();
	        if(user != null)
	        {         	
	        	Integer active = user.getActive();
	        	String name = user.getName();
	        	if(active == 0)
	        	{
	    			commonResponse.setStatus(StatusMessage.FailureCode);
	    			commonResponse.setStatus_msg(StatusMessage.FailureMessage);
	    			commonResponse.setMsg("Your account has been deactivated. Please contact admin.");
	        		writer.print(gson.toJson(commonResponse));
	    			writer.close();
					return;
	        	}	
	        	
				HashMap<String, String> accountMap =  new HashMap<String, String>();
	        	accountMap.put("firstname", name);
	        	accountMap.put("client_name", client_name);
	        	accountMap.put("mobile", user.getMobile());
	        	accountMap.put("userid", String.valueOf(user.getId()));
	        	accountMap.put("email", user.getEmail());
	        	accountMap.put("pan", user.getPan());
	        	accountMap.put("usertypeid", String.valueOf(user.getType_id()));
	        	
	        	request.getSession().setAttribute("accountMap", accountMap);
	        	
	        	commonResponse.setStatus(StatusMessage.SuccessCode);
    			commonResponse.setStatus_msg(StatusMessage.SuccessMessage);
    			commonResponse.setMsg(gson.toJson(accountMap));
        		writer.print(gson.toJson(commonResponse));
    			writer.close();
				return; 		
	        } else 
	        {

    			commonResponse.setStatus(StatusMessage.FailureCode);
    			commonResponse.setStatus_msg(StatusMessage.FailureMessage);
    			commonResponse.setMsg("Entered password is wrong.");
        		writer.print(gson.toJson(commonResponse));
    			writer.close();
				return;

	        }
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		try
		{	
			
			request.getSession().invalidate();
			
			return "forward:/";
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return "user.home";
	}
	
	@RequestMapping("/mutual-fund")
	public String mutual_fund(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "mutual-fund");
		request.setAttribute("jsp", "../common/mutual-fund.jsp");
		return "layout/layout";
	}
	@RequestMapping("/insurance")
	public String insurance(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "insurance");
		request.setAttribute("jsp", "../common/insurance.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/risk-management-through-insurance")
	public String risk_management_through_insurance(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "risk-management-through-insurance");
		request.setAttribute("jsp", "../common/insurance-planning.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/setting-financial-goals")
	public String setting_financial_goals(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "setting-financial-goals");
		request.setAttribute("jsp", "../common/setting-financial-goals.jsp");
		return "layout/layout";
	}
	
	
	
	@RequestMapping("/investment-strategy-based-on-your-risk-profile-and-asset-allocation")
	public String investment_strategy_based_on_your_risk_profile_and_asset_allocation(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "investment-strategy-based-on-your-risk-profile-and-asset-allocation");
		request.setAttribute("jsp", "../common/Investment-strategy.jsp");
		return "layout/layout";
	}
	
	
	@RequestMapping("/budgeting-and-cash-flow")
	public String budgeting_and_cash_flow(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "budgeting-and-cash-flow");
		request.setAttribute("jsp", "../common/budgeting-and-cash-flow.jsp");
		return "layout/layout";
	}
	
	
	
	
	@RequestMapping("/multiple-future-goals-planning")
	public String multiple_goals_planning(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "multiple-goals-planning");
		request.setAttribute("jsp", "../common/multiple-goals-planning.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/retirement-planning")
	public String retirement_planning_sebi(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "retirement-planning-sebi");
		request.setAttribute("jsp", "../common/rtirement-planning-sebi.jsp");
		return "layout/layout";
	}
	
	
	@RequestMapping("/goal-planning-with-variable-aa")
	public String goal_planning_with_variable_aa_sebi(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "goal-planning-with-variable-aa");
		request.setAttribute("jsp", "../common/goal-planning-with-variable-aa-sebi.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/your-investment-goal-tracker")
	public String your_investment_goal_tracker_sebi(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "Your-investment-goal-tracker-sebi");
		request.setAttribute("jsp", "../common/Your-investment-goal-tracker-sebi.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/cost-of-delay-in-savings-and-investments")
	public String cost_of_delay_in_savings_and_investments(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "cost-of-delay-in-savings-and-investments");
		request.setAttribute("jsp", "../common/Cost-of-delay-in-savings-and-investments.jsp");
		return "layout/layout";
	}
	
	
	@RequestMapping("/portfolio-performance-tracker")
	public String portfolio_performance_tracker(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "portfolio-performance-tracker");
		request.setAttribute("jsp", "../common/portfolio-performance-tracker.jsp");
		return "layout/layout";
	}
	
	
	@RequestMapping("/retirement-goal-tracker")
	public String retirement_goal_tracker_sebi(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "retirement-goal-tracker-sebi");
		request.setAttribute("jsp", "../common/retirement-goal-tracker-sebi.jsp");
		return "layout/layout";
	}
	
	
	@RequestMapping("/net-worth")
	public String net_worth(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "net-worth");
		request.setAttribute("jsp", "../common/net-worth.jsp");
		return "layout/layout";
	}
	
	
	@RequestMapping("/know-your-liabilities")
	public String know_your_liabilities(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "know-your-liabilities");
		request.setAttribute("jsp", "../common/Know-your-liabilities.jsp");
		return "layout/layout";
	}
	
	
	@RequestMapping("/understand-what-is-risk")
	public String understand_what_is_risk(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "understand-what-is-risk");
		request.setAttribute("jsp", "../common/what-is-risk.jsp");
		return "layout/layout";
	}
	
	
	
	
	
	@RequestMapping("/small-savings-add-up-to-big-money-over-time")
	public String small_savings_add_up_to_big_money_over_time(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "small-savings-add-up-to-big-money-over-time");
		request.setAttribute("jsp", "../common/small-savings-add-up.jsp");
		return "layout/layout";
	}
	
	
	@RequestMapping("/gauge-your-risk-tolerance")
	public String gauge_your_risk_tolerance(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "gauge-your-risk-tolerance");
		request.setAttribute("jsp", "../common/gauge-your-risk-tolerance.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/needs-wants-desires")
	public String Needs_wants_desires(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "needs-wants-desires");
		request.setAttribute("jsp", "../common/needs-wants-desires.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/define-and-set-your-goals-to-meet-future-goals")
	public String define_and_set_your_goals_to_meet_future_goals(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "define-and-set-your-goals-to-meet-future-goals");
		request.setAttribute("jsp", "../common/set-your-goals-to-meet-future.jsp");
		return "layout/layout";
	}

	
	@RequestMapping("/avoid-borrowing")
	public String avoid_borrowing(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "define-and-set-your-goals-to-meet-future-goals");
		request.setAttribute("jsp", "../common/avoid-borrowing.jsp");
		return "layout/layout";
	}
	
	
	@RequestMapping("/thumb-rules-for-understanding-power-of-compounding")
	public String thumb_rules_for_understanding_power_of_compounding(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "thumb-rules-for-understanding-power-of-compounding");
		request.setAttribute("jsp", "../common/thumb-rules-for-understanding.jsp");
		return "layout/layout";
	}
	
	
	@RequestMapping("/learn-about-your-investment-avenues-options")
	public String learn_about_your_investment_avenues_options(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "learn-about-your-investment-avenues-options");
		request.setAttribute("jsp", "../common/Learn-about-your-investment.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/diversify-your-investments")
	public String diversify_your_investments(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "diversify-your-investments");
		request.setAttribute("jsp", "../common/diversify-your-investments.jsp");
		return "layout/layout";
	}
	
	
	
	@RequestMapping("/inflation-the-general-increase-in-prices")
	public String inflation_the_general_increase_in_prices(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "inflation-the-general-increase-in-prices");
		request.setAttribute("jsp", "../common/inflation-the-general-increase.jsp");
		return "layout/layout";
	}

	
	@RequestMapping("/plan-early-for-your-retirement")
	public String plan_early_for_your_retirement(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "plan-early-for-your-retirement");
		request.setAttribute("jsp", "../common/plan-early-for-your-retirement.jsp");
		return "layout/layout";
	}
	
	
	
	@RequestMapping("/emergency-funds")
	public String emergency_funds(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "emergency-funds");
		request.setAttribute("jsp", "../common/emergency-funds.jsp");
		return "layout/layout";
	}
	

	

	
	 
	
	
	@RequestMapping("/Save-for-a-rainy-day")
	public String Save_for_a_rainy_day(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "Save-for-a-rainy-day");
		request.setAttribute("jsp", "../common/Save-for-a-rainy-day.jsp");
		return "layout/layout";
	}
	
	
	
	/*
	 * @RequestMapping("/tax-planning") public String
	 * tax_planning(HttpServletRequest request, HttpServletResponse response) {
	 * request.setAttribute("page", "loan-against-security");
	 * request.setAttribute("jsp", "../common/loan-against-security.jsp"); return
	 * "layout/layout"; }
	 */
	
	
	@RequestMapping("/loan-against-security")
	public String loan_against_security(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "loan-against-security");
		request.setAttribute("jsp", "../common/loan-against-security.jsp");
		return "layout/layout";
	}
	
	
	
	
	
	
	@RequestMapping("/health-insurance")
	public String health_insurance(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "health-insurance");
		request.setAttribute("jsp", "../common/health-insurance.jsp");
		return "layout/layout";
	}
   
	@RequestMapping("/unlisted-stocks")
	public String unlisted_stocks(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "unlisted_stocks");
		request.setAttribute("jsp", "../common/unlisted_stocks.jsp");
		return "layout/layout";
	}
	
	/*
	 * @RequestMapping("/retirement-planning") public String
	 * retirement_planning(HttpServletRequest request, HttpServletResponse response)
	 * { request.setAttribute("page", "retirement_planning");
	 * request.setAttribute("jsp", "../common/retirement_planning.jsp"); return
	 * "layout/layout"; }
	 */
	
	@RequestMapping("/life-insurance")
	public String life_insurance(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "life-insurance");
		request.setAttribute("jsp", "../common/life-insurance.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/general-insurance")
	public String general_insurance(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "general-insurance");
		request.setAttribute("jsp", "../common/general-insurance.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/accounting-services")
	public String accounting_services(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "accounting-services");
		request.setAttribute("jsp", "../common/accounting-services.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/fixed-income-products")
	public String fixed_income_products(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "fixed-income-products");
		request.setAttribute("jsp", "../common/fixed-income-products.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/loan-service")
	public String loan_service(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "loan-service");
		request.setAttribute("jsp", "../common/loan-service.jsp");
		return "layout/layout";
	}
	
	
	@RequestMapping("/services/stock")
	public String equities_stocks_and_shares(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "stock");
		request.setAttribute("jsp", "../common/stock.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/services/fixed-deposit")
	public String fixed_deposit(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "fixed-deposit");
		request.setAttribute("jsp", "../common/fixed-deposit.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/services/rbi-bonds")
	public String rbi_bonds(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "rbi-bonds");
		request.setAttribute("jsp", "../common/rbi-bonds.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/figure-out-your-finances")
	public String figure_out_your_finances(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "figure-out-your-finances");
		request.setAttribute("jsp", "../common/figure-out-your-finances.jsp");
		return "layout/layout";
	}
	

	
	@RequestMapping("/financial-service")
	public String financial_service(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "financial-service");
		request.setAttribute("jsp", "../common/financial-planning-services.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/bonds-and-ncd")
	public String bonds_and_ncd(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "bonds-and-ncd");
		request.setAttribute("jsp", "../common/bonds-and-ncd.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/services/investment-awareness-training-workshops")
	public String investment_awareness_training_workshops(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "investment-awareness-training-workshops");
		request.setAttribute("jsp", "../common/investment-awareness-training-workshops.jsp");
		return "layout/layout";
	}

	@RequestMapping("/services/income-tax-filing")
	public String income_tax_consultancy(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "income-tax-filing");
		request.setAttribute("jsp", "../common/income-tax-filing.jsp");
		return "layout/layout";
	}
	
	
	
	@RequestMapping("/services/succession-planning")
	public String succession_planning(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "succession-planning");
		request.setAttribute("jsp", "../common/succession-planning.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/services/portfolio-management-schemes")
	public String portfolio_management_schemes(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "portfolio-management-schemes");
		request.setAttribute("jsp", "../common/portfolio-management-schemes.jsp");
		return "layout/layout";
	}

	@RequestMapping("/services/small-savings")
	public String small_savings(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "small-savings");
		request.setAttribute("jsp", "../common/small-savings.jsp");
		return "layout/layout";
	}
	
	
	@RequestMapping("/blog-details/How-to-Build-a-1-Crore-Portfolio-from-Zero")
	public String How_to_Build_a_1_Crore_Portfolio_from_Zero(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "How-to-Build-1-Crore");
		request.setAttribute("jsp", "../common/How-to-Build-1-Crore.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/blog-details/Why-Large-Cap-Funds-Should-Be-Part-of-Your-Core-Portfolio")
	public String Why_Large_Cap_Funds_Should_Be_Part_of_Your_Core_Portfolio(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "Why_Large_Cap_Funds_Should_Be");
		request.setAttribute("jsp", "../common/Why-Large-Cap-Funds.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/blog-details/SIP-vs-Lumpsum-Which-Investment-Strategy-Is-Right-for-You")
	public String SIP_vs_Lumpsum_Which_Investment_Strategy_Is_Right_for_You(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "SIP_vs_Lumpsum");
		request.setAttribute("jsp", "../common/sip-vs-lumpsum.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/blog-details/Planting-Dreams-Early")
	public String Planting_Dreams_Early(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "Planting-Dreams-Early");
		request.setAttribute("jsp", "../common/Planting-Dreams-Early.jsp");
		return "layout/layout";
	}
	
	
	@RequestMapping("/blog-details/Succession-Planning-for-Family-Businesses-in-India")
	public String Succession_Planning_for_Family_Businesses_in_India(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "Succession-Planning");
		request.setAttribute("jsp", "../common/Succession-Planning.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/national-pension-scheme")
	public String national_pension_scheme(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "national-pension-scheme");
		request.setAttribute("jsp", "../common/national-pension-scheme.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/services/home-and-personal-loans")
	public String home_and_personal_loans(HttpServletRequest request, HttpServletResponse response) 
	{
		request.setAttribute("page", "home-and-personal-loans");
		request.setAttribute("jsp", "../common/home-and-personal-loans.jsp");
		return "layout/layout";
	}
}
