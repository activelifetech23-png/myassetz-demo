package com.credible.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.time.Year;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.hibernate.internal.util.StringHelper;
import org.json.JSONObject;
import org.owasp.esapi.ESAPI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.credible.amfi.model.SchemePerformances;
import com.credible.amfi.response.ApiTop50FundsResponse;
import com.credible.amfi.response.CategoryRollingReturnsResponse;
import com.credible.amfi.response.MutualFundCategoryReturnsResponse;
import com.credible.amfi.response.MutualFundSIPReturnsAPIResponse;
import com.credible.amfi.response.SipResponseByAmc;
import com.credible.model.Blogs;
import com.credible.model.BridgePlanSubscription;
import com.credible.model.ContactFeedback;
import com.credible.model.Users;
import com.credible.model.UsersBridgeEmailer;
import com.credible.response.ApiBlogCenterResponse;
import com.credible.response.ApiBlogDetailsWebsiteResponse;
import com.credible.response.ApiBlogsResponse;
import com.credible.response.ApiNewsCenterResponse;
import com.credible.response.ApiNewsDetailsResponse;
import com.credible.response.ApiNewsResponse;
import com.credible.response.CommonResponse;
import com.credible.response.FactsheetAPIResponse;
import com.credible.response.MutualFundPortfolioAPIResponse;
import com.credible.utils.CommonUtils;
import com.credible.utils.HttpPost;
import com.credible.utils.MfApiAccessor;
import com.credible.utils.MfApiUrls;
import com.credible.utils.ProjectUtils;
import com.credible.utils.SendEmailUtil;
import com.credible.utils.StatusCodesAndMessages;
import com.credible.utils.StatusMessage;
import com.credible.utils.Utils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.razorpay.Order;
import com.razorpay.RazorpayClient;
import org.springframework.core.env.Environment;

@Controller
public class HomeController {
	@Autowired
	SendEmailUtil sendEmailUtil;
	@Autowired
	private Environment env;

	@RequestMapping({ "", "/", "/home" })
	public String welcome(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			String sessionid = request.getParameter("sessionid");

			if (sessionid == null) {
				sessionid = "";
			}

			request.setAttribute("sessionid", sessionid);

			// System.out.println("sessionid--->"+sessionid);

			HashMap<String, String> accountMap = (HashMap<String, String>) request.getSession()
					.getAttribute("accountMap");
			if (StringHelper.isNotEmpty(sessionid) && accountMap == null) {
				String client_name = "bridge";
				Integer user_id = Integer.parseInt(sessionid);

				String formattedUrl, result = "";

				HashMap<String, String> hashMap = new HashMap<String, String>();
				hashMap.put("user_id", sessionid);
				hashMap.put("key", "6edfe7d5-c527-4998-bed6-7f7286a0e0e9");

				formattedUrl = MfApiAccessor.getFormattedUrl(MfApiUrls.getValidateLogin, hashMap);
				result = com.credible.utils.HttpPost.SendHttpPost(formattedUrl);
				// System.out.println("result23-->"+result);
				CommonResponse commonResponse1 = new Gson().fromJson(result, CommonResponse.class);
				// Users user = commonDao.getUserDetails(user_id, client_name);
				Users user = commonResponse1.getUser();
				String name = user.getName();
				String pan = user.getPan();
				String mobile = user.getMobile();
				String email = user.getEmail();
				String type_id = String.valueOf(user.getType_id());

				// System.out.println("name--->"+name);

				accountMap = new HashMap<String, String>();
				accountMap.put("userid", String.valueOf(user_id));
				accountMap.put("firstname", name);
				accountMap.put("mobile", mobile);
				accountMap.put("email", email);
				accountMap.put("pan", pan);
				accountMap.put("client_name", client_name);
				accountMap.put("usertypeid", type_id);
				request.getSession().setAttribute("accountMap", accountMap);
			}
			request.setAttribute("accountMap", accountMap);

			String sip_amount = request.getParameter("sip_amount");
			String interest_rate = request.getParameter("interest_rate");
			String period = request.getParameter("period");

			if (sip_amount == null || StringHelper.isEmpty(sip_amount)) {
				sip_amount = "25000";
			}
			if (interest_rate == null || StringHelper.isEmpty(interest_rate)) {
				interest_rate = "12";
			}
			if (period == null || StringHelper.isEmpty(period)) {
				period = "240";
			}

			sip_amount = sip_amount.trim();
			interest_rate = interest_rate.trim();
			period = period.trim();

			request.setAttribute("sip_amount", sip_amount);
			request.setAttribute("interest_rate", interest_rate);
			request.setAttribute("period", period);

			String category = request.getParameter("category");
			if (category == null) {
				category = "";
			}

			String pageid = request.getParameter("pageid");
			if (pageid == null || pageid.isEmpty() || !NumberUtils.isCreatable(pageid)) {
				pageid = "1";
			}
			request.setAttribute("pageid", pageid);
			int page_id = Integer.parseInt(pageid);

					 
			       
			        
			request.setAttribute("page", "home");
			request.setAttribute("jsp", "../common/home.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping("/contactus")
	public String contactus(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "contactus");
		request.setAttribute("jsp", "../common/contact-us.jsp");
		return "layout/layout";
	}

	@RequestMapping(value = "/saveContactUs")
	public void saveContactUs(HttpServletRequest request, HttpServletResponse response) throws IOException {

		PrintWriter writer = response.getWriter();
		response.setContentType("application/json");
		Gson gson = new Gson();
		CommonResponse commonResponse = new CommonResponse();

		try {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String subject = request.getParameter("subject");
			String message = request.getParameter("message");
			String company = request.getParameter("company");
			String mobile = request.getParameter("mobile");
			String support_email = request.getParameter("support_email");

			if (name == null) {
				name = "";
			}
			if (email == null) {
				email = "";
			}
			if (subject == null) {
				subject = "";
			}
			if (message == null) {
				message = "";
			}
			if (support_email == null) {
				support_email = "";
			}

			name = name.trim();
			email = email.trim();
			subject = subject.trim();
			message = message.trim();
			support_email = support_email.trim();

			String validationErrorMsg = "";
			if (validationErrorMsg.equalsIgnoreCase("")) {
				if (ESAPI.validator().isValidInput("name", request.getParameter("name"), "SafeString", 100, true)) {
					name = request.getParameter("name");
				} else {
					validationErrorMsg = "Please enter a valid name. Special characters are not allowed";
				}
				if (name.length() <= 3) {
					validationErrorMsg = "Please enter a valid name";
				}
			}

			if (validationErrorMsg.equalsIgnoreCase("")) {
				if (ESAPI.validator().isValidInput("mobile", request.getParameter("mobile"), "SafeString", 100, true)) {
					mobile = request.getParameter("mobile");
				} else {
					validationErrorMsg = "Please enter a valid mobile";
				}
				if (mobile.length() <= 9) {
					validationErrorMsg = "Please enter a valid mobile";
				}
			}

			if (validationErrorMsg.equalsIgnoreCase("")) {
				if (ESAPI.validator().isValidInput("email", request.getParameter("email"), "Email", 100, true)) {
					email = request.getParameter("email");
				} else {
					validationErrorMsg = "Please enter a valid email";
				}
				if (email.length() <= 5) {
					validationErrorMsg = "Please enter a valid email";
				}
			}

			if (validationErrorMsg.equalsIgnoreCase("")) {
				if (ESAPI.validator().isValidInput("message", request.getParameter("message"), "SafeString", 100,
						true)) {
					message = request.getParameter("message");
				} else {
					validationErrorMsg = "Please enter a valid message. Special characters are not allowed";
				}
				if (message.length() <= 3) {
					validationErrorMsg = "Please enter your message";
				}
			}

			if (validationErrorMsg.equalsIgnoreCase("")) {
				if (ESAPI.validator().isValidInput("subject", request.getParameter("subject"), "SafeString", 100,
						true)) {
					subject = request.getParameter("subject");
				} else {
					validationErrorMsg = "Please enter a valid subject. Special characters are not allowed";
				}
				if (subject.length() <= 3) {
					validationErrorMsg = "Please enter a valid subject";
				}
			}

			// System.out.println("name = " + name);
			// System.out.println("mobile = " + mobile);
			// System.out.println("email = " + email);
			// System.out.println("subject = " + subject);
			// System.out.println("message = " + message);
			// System.out.println("validationErrorMsg = " + validationErrorMsg);

			if (!validationErrorMsg.isEmpty()) {
				commonResponse.setStatus(StatusMessage.FailureCode);
				commonResponse.setStatus_msg(StatusMessage.FailureMessage);
				commonResponse.setMsg(validationErrorMsg);
				writer.println(gson.toJson(commonResponse));
			}

			if (validationErrorMsg.equalsIgnoreCase("")) {

				ContactFeedback savefeedback = new ContactFeedback();
				savefeedback.setName(name);
				savefeedback.setEmail(email);
				savefeedback.setSubject(subject);
				savefeedback.setMessage(message);
				savefeedback.setCompany(company);
				savefeedback.setMobile(mobile);
				savefeedback.setClient_name("wealthseed");
				// contactFeedbackRepository.saveContactUs(savefeedback);

				sendEmailUtil.sendContactDetails(name, email, subject, message, support_email, company, mobile);

				// sendEmailUtil.sendUserContactConformation(name,email,support_email);

				commonResponse.setStatus(StatusCodesAndMessages.SuccessCode);
				commonResponse.setStatus_msg(StatusCodesAndMessages.SuccessMessage);
				commonResponse.setMsg("Contact details added successfully");
				writer.println(gson.toJson(commonResponse));
				writer.close();

			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	/*
	 * @RequestMapping("/blog") public String blog(HttpServletRequest request,
	 * HttpServletResponse response) {
	 * 
	 * String category = request.getParameter("category"); if(category ==
	 * null){category = "";}
	 * 
	 * String pageid = request.getParameter("pageid"); if(pageid == null ||
	 * pageid.isEmpty() || !NumberUtils.isCreatable(pageid)){pageid = "1";}
	 * request.setAttribute("pageid", pageid); int page_id =
	 * Integer.parseInt(pageid);
	 * 
	 * String formattedUrl, result = "";
	 * 
	 * HashMap<String, String> hashMap = new HashMap<String, String>();
	 * hashMap.put("pageid", String.valueOf(page_id)); hashMap.put("category",
	 * "All"); hashMap.put("key", "6edfe7d5-c527-4998-bed6-7f7286a0e0e9");
	 * 
	 * formattedUrl = MfApiAccessor.getFormattedUrl(MfApiUrls.getAllBlogs, hashMap);
	 * result = HttpPost.SendHttpPost(formattedUrl);
	 * //System.out.println("result-->"+result); ApiBlogCenterResponse
	 * apiBlogCenterResponse = new Gson().fromJson(result,
	 * ApiBlogCenterResponse.class);
	 * //System.out.println("Count--->"+apiBlogCenterResponse.getPageCount());
	 * //System.out.println("listSize--->"+apiBlogCenterResponse.getList().size());
	 * 
	 * request.setAttribute("blogsPageCount", apiBlogCenterResponse.getPageCount());
	 * 
	 * List<ApiBlogsResponse> blogsList = apiBlogCenterResponse.getList();
	 * request.setAttribute("blogsList", blogsList);
	 * 
	 * List<Integer> paginator = ProjectUtils.paginator(page_id,
	 * apiBlogCenterResponse.getPageCount()); int beginPaginatorId = 1;
	 * if(paginator.get(0) != 0) { beginPaginatorId = paginator.get(0); } int
	 * endPaginatorId = paginator.get(1);
	 * //System.out.println("endPaginatorId"+endPaginatorId);
	 * request.setAttribute("beginPaginatorId", beginPaginatorId);
	 * request.setAttribute("endPaginatorId", endPaginatorId);
	 * 
	 * request.setAttribute("page", "blog"); request.setAttribute("jsp",
	 * "../common/blog.jsp");
	 * 
	 * return "layout/layout"; }
	 */

	@RequestMapping("/blog")
	public String blog(HttpServletRequest request, HttpServletResponse response) {

	    String category = request.getParameter("category"); 
	    String pageidStr = request.getParameter("pageid");

	    if (category == null || category.isBlank()) {
	        category = "All";
	    }

	    if (pageidStr == null || pageidStr.isBlank() || !NumberUtils.isNumber(pageidStr)) {
	        pageidStr = "1";
	    }

	    int page_id = Integer.parseInt(pageidStr);

	    HttpSession session = request.getSession();
	    Integer blogsPageCount = (Integer) session.getAttribute("blogsPageCount");
	    boolean shouldCallApi = false;

	    if (page_id == 1) {
	        shouldCallApi = true;
	    } else if (blogsPageCount == null || page_id <= blogsPageCount) {
	        shouldCallApi = true;
	    }

	    int beginPaginatorId = 1;
	    int endPaginatorId = 1;
	    List<ApiBlogsResponse> blogsList = new ArrayList<>();

	    if (shouldCallApi) {
	        request.setAttribute("pageid", page_id);
	        request.setAttribute("category", category);

	        HashMap<String, String> hashMap = new HashMap<>();
	        hashMap.put("category", category);
	        hashMap.put("pageid", String.valueOf(page_id));
	        hashMap.put("key", "6edfe7d5-c527-4998-bed6-7f7286a0e0e9");
	        hashMap.put("client_name", "shilpaassociates");

	        String formattedUrl = MfApiAccessor.getFormattedUrl(MfApiUrls.getBlogs, hashMap);
	        String result = HttpPost.SendHttpPost(formattedUrl);

	        ApiBlogCenterResponse apiBlogCenterResponse = new GsonBuilder()
	                .setDateFormat("MMM dd, yyyy")
	                .create()
	                .fromJson(result, ApiBlogCenterResponse.class);

	        if (apiBlogCenterResponse != null && apiBlogCenterResponse.getList() != null) {
	            int blogPageCount = apiBlogCenterResponse.getBlogsPageCount();

	            request.setAttribute("blogsPageCount", blogPageCount);
	            session.setAttribute("blogsPageCount", blogPageCount);

	            blogsList = apiBlogCenterResponse.getList(); 
	            request.setAttribute("categoryList", apiBlogCenterResponse.getCategory_name());

	            List<Integer> paginator = Utils.paginator(page_id, blogPageCount);
	            beginPaginatorId = paginator.get(0);
	            endPaginatorId = paginator.get(1);
	        }
	    }

	    request.setAttribute("blogsList", blogsList);
	    request.setAttribute("beginPaginatorId", beginPaginatorId);
	    request.setAttribute("endPaginatorId", endPaginatorId);
	    request.setAttribute("shouldCallApi", shouldCallApi);
	    request.setAttribute("page", "blog");
	    request.setAttribute("jsp", "../common/blog.jsp");

	    return "layout/layout";
	}
	
	@RequestMapping(value="/blog/{titleOrcategory}") 
	  public String blogdetails(HttpServletRequest request, HttpServletResponse response,@PathVariable(value="titleOrcategory") String titleOrcategory) throws Exception 
	  { 
		  try 
		  { 
			  /*List<String> categoryList = blogRepository.getBlogCatgeories(); */
			  
			  String category = request.getParameter("category");
			    if (category == null || category.isEmpty()) {
			        category = "All";
			    }

			    String pageid = request.getParameter("pageid");
			    if (pageid == null || pageid.isEmpty() || !NumberUtils.isCreatable(pageid)) {
			        pageid = "1";
			    }

			    int page_id = Integer.parseInt(pageid);
			    request.setAttribute("pageid", pageid);
			    request.setAttribute("category", category);

			    // Prepare API call
			    HashMap<String, String> hashMap = new HashMap<>();
			    hashMap.put("category", category);
			    hashMap.put("pageid", String.valueOf(page_id));
			    hashMap.put("key", "6edfe7d5-c527-4998-bed6-7f7286a0e0e9");
			    hashMap.put("client_name", "shilpaassociates");

			    String formattedUrl = MfApiAccessor.getFormattedUrl(MfApiUrls.getBlogs, hashMap);
			    System.out.println("formattedUrl = " + formattedUrl);

			    String result = HttpPost.SendHttpPost(formattedUrl);
			    System.out.println("result --> " + result);

			    ApiBlogCenterResponse apiBlogCenterResponse = new GsonBuilder().setDateFormat("MMM dd, yyyy").create().fromJson(result, ApiBlogCenterResponse.class);

			    // Set category names
			    request.setAttribute("categoryList", apiBlogCenterResponse.getCategory_name());

			    // Blog list
			    List<ApiBlogsResponse> blogsList = apiBlogCenterResponse.getList();
			    request.setAttribute("blogsList", blogsList);

			  
			   
			    hashMap.put("key", "6edfe7d5-c527-4998-bed6-7f7286a0e0e9");
			    hashMap.put("client_name", "shilpaassociates");
		        hashMap.put("title_or_category", titleOrcategory);

		        formattedUrl = MfApiAccessor.getFormattedUrl(MfApiUrls.getBlogByTitleOrCategory, hashMap);
				/* System.out.println("API URL: " + formattedUrl); */

		         result = HttpPost.SendHttpPost(formattedUrl);
		        //List<String> categoryList = new Gson().fromJson(result, List.class);
		        
		        Map<String, Object> responseMap = new Gson().fromJson(result, Map.class);

			    // Extract the categoryList from the map
			    List<String> categoryList = (List<String>) responseMap.get("categoryList");
			    

		        System.out.println("categoryList = " + categoryList);
			  
			  request.setAttribute("categoryList", categoryList);
			  
			  
			  
			  formattedUrl = MfApiAccessor.getFormattedUrl(MfApiUrls.getBlogByTitleOrCategory, hashMap);
			  System.out.println("API URL: " + formattedUrl);

			  result = HttpPost.SendHttpPost(formattedUrl);

			  // Parse into wrapper object
			  ApiBlogDetailsWebsiteResponse apiResponse = new GsonBuilder().setDateFormat("MMM dd, yyyy").create().fromJson(result, ApiBlogDetailsWebsiteResponse.class);

			  // Extract blog
			  Blogs blog = apiResponse.getBlogs();
			  String author = blog.getAuthor_name();
			  String content = blog.getContent();
			 
			  request.setAttribute("author", author);
			  request.setAttribute("content", content);
			  request.setAttribute("blogs", blog); 
			  
			  
		
			  
			  request.setAttribute("page", "blog-title"); request.setAttribute("jsp", "../common/blog-details.jsp");
			 
		  } 
		  catch(Exception ex) { 
			  ex.printStackTrace(); 
		  }
		  return "layout/layout"; 
	}
	

	@RequestMapping("/aboutus")
	public String aboutus(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "aboutus");
		request.setAttribute("jsp", "../common/about-us.jsp");
		return "layout/layout";
	}
	
	@RequestMapping("/about-founder")
	public String about_founder(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "aboutfounder");
		request.setAttribute("jsp", "../common/about-founder.jsp");
		return "layout/layout";
	}

	@RequestMapping("/team")
	public String our_team(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "our-team");
		request.setAttribute("jsp", "../common/our-team.jsp");
		return "layout/layout";
	}

	@RequestMapping("/services")
	public String services(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "service");
		request.setAttribute("jsp", "../common/services.jsp");
		return "layout/layout";
	}

	@RequestMapping("/services-detail")
	public String services_detail(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "service-detail");
		request.setAttribute("jsp", "../common/services-detail.jsp");
		return "layout/layout";
	}

	@RequestMapping("/faq")
	public String faq(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "faq");
		request.setAttribute("jsp", "../common/mutual-funds-faq.jsp");
		return "layout/layout";
	}

	@RequestMapping(value = { "/faq/mutual-funds" })
	public String mfq(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("page", "mutual-funds-faq");
		request.setAttribute("jsp", "../common/mutual-funds-faq.jsp");
		return "layout/layout";
	}

	@RequestMapping(value = { "/faq/financial-planning" })
	public String financial_faq(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			request.setAttribute("page", "financial-planning");
			request.setAttribute("jsp", "../common/financial-planning.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping(value = { "/faq/nri-corner" })
	public String nri(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			request.setAttribute("page", "nri-corner");
			request.setAttribute("jsp", "../common/nri-corner.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping("/plan-a-goal")
	public String plan_a_goal(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "plan-a-goal");
		request.setAttribute("jsp", "../common/plan-a-goal.jsp");
		return "layout/layout";
	}

	@RequestMapping("/our-offices")
	public String our_offices(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "our-offices");
		request.setAttribute("jsp", "../common/our-offices.jsp");
		return "layout/layout";
	}

	@RequestMapping("/mission-values")
	public String mission_values(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "mission-values");
		request.setAttribute("jsp", "../common/mission-values.jsp");
		return "layout/layout";
	}

	@RequestMapping("/testimonials")
	public String testimonials(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "testimonials");
		request.setAttribute("jsp", "../common/testimonials.jsp");
		return "layout/layout";
	}

	/*
	 * @RequestMapping(value="/news") public String
	 * news(@RequestParam(value="pageid",required=false) String pageid,
	 * HttpServletRequest request, HttpServletResponse response) { try { if(pageid
	 * == null || pageid.equalsIgnoreCase("") || !NumberUtils.isNumber(pageid)) {
	 * pageid = "1"; }
	 * 
	 * String category = "all";
	 * 
	 * category = category.trim(); category = category.replaceAll("-", " ");
	 * 
	 * request.setAttribute("category_name", category);
	 * request.setAttribute("pageid", pageid);
	 * 
	 * String formattedUrl, result = "";
	 * 
	 * HashMap<String, String> hashMap = new HashMap<String, String>();
	 * hashMap.put("pageid", pageid); hashMap.put("category", "Mutual Fund");
	 * 
	 * formattedUrl = MfApiAccessor.getFormattedUrl(MfApiUrls.getAllNews, hashMap);
	 * result = HttpPost.SendHttpPost(formattedUrl);
	 * //System.out.println("result-->"+result); ApiNewsCenterResponse
	 * apiNewsCenterResponse = new Gson().fromJson(result,
	 * ApiNewsCenterResponse.class);
	 * 
	 * //System.out.println("size-->"+apiNewsCenterResponse.getCategory());
	 * List<ApiNewsResponse> news = apiNewsCenterResponse.getList();
	 * //System.out.println("size1-->"+news.size());
	 * request.setAttribute("newslist", news);
	 * 
	 * request.setAttribute("newsPageCount", apiNewsCenterResponse.getPageCount());
	 * 
	 * //int next_page_id = Integer.parseInt(pageid); if(next_page_id ==
	 * newsPageCount || newsPageCount==0){ next_page_id = 0; }
	 * 
	 * List<Integer> paginator = Utils.paginator(Integer.parseInt(pageid),
	 * apiNewsCenterResponse.getPageCount()); int beginPaginatorId =
	 * paginator.get(0); int endPaginatorId = paginator.get(1);
	 * 
	 * request.setAttribute("beginPaginatorId", beginPaginatorId);
	 * request.setAttribute("endPaginatorId", endPaginatorId);
	 * 
	 * request.setAttribute("page", "news"); request.setAttribute("jsp",
	 * "../common/news.jsp");
	 * 
	 * } catch(Exception ex) { ex.printStackTrace(); } return "layout/layout"; }
	 */
	@RequestMapping(value="/news")
   	public String news(@RequestParam(value="pageid",required=false) String pageid, HttpServletRequest request, HttpServletResponse response)
   	{
		try
		{
	        if (pageid == null || pageid.trim().isEmpty() || !NumberUtils.isNumber(pageid)) {pageid = "1";}
 
	        int page_id = Integer.parseInt(pageid);
	        request.setAttribute("pageid", pageid);
 
	        String category = "Mutual Fund";
	        request.setAttribute("category_name", category);
 
	        HttpSession session = request.getSession();
	        Integer newsPageCount = (Integer) session.getAttribute("newsPageCount");
 
	        boolean shouldCallApi = false;
 
	        if (page_id == 1)
	        {
	            shouldCallApi = true;
	        } else
	        {
	            if (newsPageCount == null)
	            {
	                shouldCallApi = true;
	            } else if (page_id <= newsPageCount)
	            {
	                shouldCallApi = true;
	            } else
	            {
	                shouldCallApi = false;
	            }
	        }
 
	        if (shouldCallApi)
	        {
	            HashMap<String, String> newsHashMap = new HashMap<>();
	            newsHashMap.put("pageid", pageid);
	            newsHashMap.put("category", category);
 
	            String formattedUrl = MfApiAccessor.getFormattedUrl(MfApiUrls.getAllNews, newsHashMap);
	            String result = HttpPost.SendHttpPost(formattedUrl);
 
	            ApiNewsCenterResponse apiNewsCenterResponse = new Gson().fromJson(result, ApiNewsCenterResponse.class);
 
	            if (apiNewsCenterResponse != null && apiNewsCenterResponse.getList() != null) {
	                List<ApiNewsResponse> news = apiNewsCenterResponse.getList();
	                request.setAttribute("newslist", news);
 
	                newsPageCount = apiNewsCenterResponse.getPageCount();
	                request.setAttribute("newsPageCount", newsPageCount);
	                session.setAttribute("newsPageCount", newsPageCount);
 
	                int next_page_id = page_id;
	                if (next_page_id == newsPageCount || newsPageCount == 0) {
	                    next_page_id = 0;
	                }
 
	                List<Integer> paginator = Utils.paginator(page_id, newsPageCount);
	                int beginPaginatorId = paginator.get(0);
	                int endPaginatorId = paginator.get(1);
 
	                request.setAttribute("beginPaginatorId", beginPaginatorId);
	                request.setAttribute("endPaginatorId", endPaginatorId);
	            } else
	            {
	                request.setAttribute("newslist", new ArrayList<>());
	                System.out.println("Warning: No news data returned.");
	            }
	        }
	        request.setAttribute("shouldCallApi", shouldCallApi);
	        request.setAttribute("jsp", "../common/news.jsp");
 
	    } catch (Exception ex) {
	        ex.printStackTrace();
	    }
 
	    return "layout/layout";
   	}
	@RequestMapping(value = "/news/{category}")
	public String news1(@PathVariable(value = "category") String category,
			@RequestParam(value = "pageid", required = false) String pageid, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		try {
			if (pageid == null || pageid.equalsIgnoreCase("") || !NumberUtils.isNumber(pageid)) {
				pageid = "1";
			}

			if (category == null) {
				category = "all";
			}

			category = category.trim();
			category = category.replaceAll("-", " ");

			request.setAttribute("category_name", category);
			request.setAttribute("pageid", pageid);

			// List<News> news = newsRepository.getAllNews(category,Integer.parseInt(pageid)
			// - 1);
			// request.setAttribute("newslist", news);

			// int newsPageCount = newsRepository.getNewsPageCount(category);
			// request.setAttribute("newsPageCount", newsPageCount);

			// int next_page_id = Integer.parseInt(pageid);
			/*
			 * if(next_page_id == newsPageCount || newsPageCount==0){ next_page_id = 0; }
			 */

			// List<Blogs> recommandBlogList = blogRepository.getRecommandBlogs("All");
			// request.setAttribute("recommandArticleList", recommandBlogList);

			// List<Integer> paginator = Utils.paginator(Integer.parseInt(pageid),
			// newsPageCount);
			// int beginPaginatorId = paginator.get(0);
			// int endPaginatorId = paginator.get(1);

			// request.setAttribute("beginPaginatorId", beginPaginatorId);
			// request.setAttribute("endPaginatorId", endPaginatorId);

			request.setAttribute("page", "news");
			request.setAttribute("jsp", "../common/news.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping(value = "/news/{category}/{title}")
	public String news_details(@PathVariable(value = "category") String category,
			@PathVariable(value = "title") String title, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		try {
			if (category == null) {
				category = "all";
			}

			title = title.trim();
			title = title.replaceAll("-", " ");
			category = category.trim();
			category = category.replaceAll("-", " ");

			request.setAttribute("title_name", title);
			request.setAttribute("category_name", category);

			// System.out.println("Testing-->"+category);

			String formattedUrl, result = "";

			HashMap<String, String> hashMap = new HashMap<String, String>();
			hashMap.put("title", title);

			formattedUrl = MfApiAccessor.getFormattedUrl(MfApiUrls.getNewsByTitle, hashMap);
			result = HttpPost.SendHttpPost(formattedUrl);
			// System.out.println("result-->"+result);
			ApiNewsDetailsResponse apiNewsCenterResponse = new Gson().fromJson(result, ApiNewsDetailsResponse.class);

			request.setAttribute("news", apiNewsCenterResponse);

			// List<Blogs> recommandBlogList = blogRepository.getRecommandBlogs("All");
			// request.setAttribute("recommandArticleList", recommandBlogList);

			/*
			 * if(news != null) { int id = news.getId(); List<News> prevAndNextNews =
			 * newsRepository.getPrevAndNextNews(id);
			 * request.setAttribute("prevAndNextNews", prevAndNextNews); }
			 */

			request.setAttribute("page", "news-title");
			request.setAttribute("jsp", "../common/news-details.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping(value = "/mutual-funds")
	public String mutual_funds_questions(HttpServletRequest request, HttpServletResponse response) {
		try {
			// List<MutualFunds> list = commonDao.getAllMutualFunds();
			// request.setAttribute("list", list);

			request.setAttribute("page", "mutual-funds");
			request.setAttribute("jsp", "../common/mutual-funds.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping(value = "/fixed-deposit")
	public String fixed_deposite(HttpServletRequest request, HttpServletResponse response) {
		try {
			// List<MutualFunds> list = commonDao.getAllMutualFunds();
			// request.setAttribute("list", list);

			request.setAttribute("page", "fixed-deposit");
			request.setAttribute("jsp", "../common/fixed-deposite.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping(value = "/Investment-Services")
	public String Investment_Services(HttpServletRequest request, HttpServletResponse response) {
		try {
			// List<MutualFunds> list = commonDao.getAllMutualFunds();
			// request.setAttribute("list", list);

			request.setAttribute("page", "fixed-deposite");
			request.setAttribute("jsp", "../common/investment-services.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping(value = "/capital-gain-bonds")
	public String capital_gain_bonds(HttpServletRequest request, HttpServletResponse response) {
		try {
			// List<MutualFunds> list = commonDao.getAllMutualFunds();
			// request.setAttribute("list", list);

			request.setAttribute("page", "capital-gain-bonds");
			request.setAttribute("jsp", "../common/capital-gain-bonds.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping(value = "/pms")
	public String pms(HttpServletRequest request, HttpServletResponse response) {
		try {
			// List<MutualFunds> list = commonDao.getAllMutualFunds();
			// request.setAttribute("list", list);

			request.setAttribute("page", "pms");
			request.setAttribute("jsp", "../common/pms.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping(value = "/aif")
	public String aif(HttpServletRequest request, HttpServletResponse response) {
		try {
			// List<MutualFunds> list = commonDao.getAllMutualFunds();
			// request.setAttribute("list", list);

			request.setAttribute("page", "aif");
			request.setAttribute("jsp", "../common/aif.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping(value = "/sif")
	public String sif(HttpServletRequest request, HttpServletResponse response) {
		try {
			// List<MutualFunds> list = commonDao.getAllMutualFunds();
			// request.setAttribute("list", list);

			request.setAttribute("page", "sif");
			request.setAttribute("jsp", "../common/sif.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}
	@RequestMapping(value = "/demat-services")
	public String demat_services(HttpServletRequest request, HttpServletResponse response) {
		try {
			// List<MutualFunds> list = commonDao.getAllMutualFunds();
			// request.setAttribute("list", list);

			request.setAttribute("page", "demat-services");
			request.setAttribute("jsp", "../common/demat-services.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}
	@RequestMapping(value = "/unlisted-shares")
	public String unlisted_equities(HttpServletRequest request, HttpServletResponse response) {
		try {
			// List<MutualFunds> list = commonDao.getAllMutualFunds();
			// request.setAttribute("list", list);

			request.setAttribute("page", "unlisted equities");
			request.setAttribute("jsp", "../common/unlisted-equities.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping(value = "/gold & silver-investments")
	public String gold_silver_investments(HttpServletRequest request, HttpServletResponse response) {
		try {
			// List<MutualFunds> list = commonDao.getAllMutualFunds();
			// request.setAttribute("list", list);

			request.setAttribute("page", "gold silver investments");
			request.setAttribute("jsp", "../common/gold-silver-investments.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping(value = "/tax-planning")
	public String tax_planning(HttpServletRequest request, HttpServletResponse response) {
		try {
			// List<MutualFunds> list = commonDao.getAllMutualFunds();
			// request.setAttribute("list", list);

			request.setAttribute("page", "tax-planning-services");
			request.setAttribute("jsp", "../common/tax-planning-services.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping(value = "/post-your-queries")
	public String queriess(HttpServletRequest request, HttpServletResponse response) {
		try {

			// List<AnsweredPostQueries> answeredPostQueries =
			// commonDao.getAnsweredPostQueriesAssign("all");
			// request.setAttribute("answeredPostQueries", answeredPostQueries);

			request.setAttribute("page", "queries");
			request.setAttribute("jsp", "../common/queries.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping("/financial-planning")
	public String financial_planning(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "financial-planning");
		request.setAttribute("jsp", "../common/financial-planning.jsp");
		return "layout/layout";
	}

	/*
	 * @RequestMapping("/fp-offerings") public String
	 * fp_offerings(HttpServletRequest request, HttpServletResponse response) {
	 * request.setAttribute("page", "fp-offerings"); request.setAttribute("jsp",
	 * "../common/fp-offerings.jsp"); return "layout/layout"; }
	 */

	@RequestMapping("/private-wealth-clients")
	public String private_wealth_clients(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "private-wealth-clients");
		request.setAttribute("jsp", "../common/private-wealth-clients.jsp");
		return "layout/layout";
	}

	@RequestMapping("/we-can-help-you")
	public String we_can_help_you(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "we-can-help-you");
		request.setAttribute("jsp", "../common/we-can-help-you.jsp");
		return "layout/layout";
	}

	@RequestMapping("/how-we-invest")
	public String how_we_invest(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "how-we-invest");
		request.setAttribute("jsp", "../common/how-we-invest.jsp");
		return "layout/layout";
	}

	@RequestMapping("/our-story")
	public String our_story(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "our-story");
		request.setAttribute("jsp", "../common/our-story.jsp");
		return "layout/layout";
	}

	@RequestMapping("/info-graphics/find-the-best-80c-investment")
	public String infographics(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "infographics");
		request.setAttribute("jsp", "../common/infographics.jsp");
		return "layout/layout";
	}

	@RequestMapping("/commission-disclosures")
	public String commission_disclosures(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "commission-disclosures");
		request.setAttribute("jsp", "../common/commission-disclosures.jsp");
		return "layout/layout";
	}

	@RequestMapping("/disclosures")
	public String disclaimer(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "corporate-disclosures");
		request.setAttribute("jsp", "../common/corporate-disclosures.jsp");
		return "layout/layout";
	}

	@RequestMapping("/privacy-policy")
	public String client_privacy_policy(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "/client-privacy-policy");
		request.setAttribute("jsp", "../common/client-privacy-policy.jsp");
		return "layout/layout";
	}

	@RequestMapping("/terms-and-conditions")
	public String terms_and_conditions(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "/terms-and-conditions");
		request.setAttribute("jsp", "../common/terms-and-conditions.jsp");
		return "layout/layout";
	}

	@RequestMapping(value = "/associate-registration")
	public String associate_registration(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			request.setAttribute("page", "associate-registration");
			request.setAttribute("jsp", "../common/associate-registration.jsp");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}

	@RequestMapping("/overview")
	public String overview(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "risk-protection");
		request.setAttribute("jsp", "../common/overview.jsp");
		return "layout/layout";
	}

	@RequestMapping("/risk-protection")
	public String risk_protection(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "risk-protection");
		request.setAttribute("jsp", "../common/risk-protection.jsp");
		return "layout/layout";
	}

	@RequestMapping("/wealth-management")
	public String wealth_management(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "wealth-management");
		request.setAttribute("jsp", "../common/wealth-management.jsp");
		return "layout/layout";
	}

	@RequestMapping("/real-estate")
	public String real_estate(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "real-estate");
		request.setAttribute("jsp", "../common/real-estate.jsp");
		return "layout/layout";
	}

	@RequestMapping("/mortgages")
	public String mortgages(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "mortgages");
		request.setAttribute("jsp", "../common/mortgages.jsp");
		return "layout/layout";
	}

	@RequestMapping("/meet-Truuegro")
	public String meet_Truuegro(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "meet-Truuegro");
		request.setAttribute("jsp", "../common/meet-Truuegro.jsp");
		return "layout/layout";
	}

	@RequestMapping("/Truuegro-top50-funds")
	public String top100_funds(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "Truuegro-top50-funds");

		List<String> scheme_amfi_code_list = new ArrayList<String>();
		scheme_amfi_code_list = CommonUtils.getTop50FundsSchemeCode();

		// List<SchemePerformances> list =
		// commonDao.getTop100Funds(scheme_amfi_code_list,"Equity: Large Cap");
		// request.setAttribute("list", list);
		request.setAttribute("sidemenu", "Equity: Large Cap");

		request.setAttribute("jsp", "../common/top100-funds.jsp");
		return "layout/layout";
	}

	@RequestMapping("/getTruuegroRecommendedFunds")
	public void getTruuegroRecommendedFunds(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		PrintWriter writer = response.getWriter();
		response.setContentType("text/Html");
		Gson gson = new Gson();

		ApiTop50FundsResponse apiTop50FundsResponse = new ApiTop50FundsResponse();
		try {
			String category = request.getParameter("category");

			if (category == null || StringHelper.isEmpty(category)) {
				apiTop50FundsResponse.setStatus(StatusCodesAndMessages.FailureCode);
				apiTop50FundsResponse.setStatus_msg(StatusCodesAndMessages.FailureMessage);
				apiTop50FundsResponse.setMsg("Invalid / Empty Category");
			} else {
				List<String> scheme_amfi_code_list = new ArrayList<String>();
				scheme_amfi_code_list = CommonUtils.getTop50FundsSchemeCode();

				// List<SchemePerformances> list =
				// commonDao.getTop100Funds(scheme_amfi_code_list,category);
				List<SchemePerformances> list = null;
				if (list != null && list.size() > 0) {
					String scheme_name = "";
					String icon = "birla.jpg";
					for (SchemePerformances schemePerformance : list) {
						scheme_name = schemePerformance.getScheme_amfi();
						if (scheme_name.toLowerCase().contains("axis")) {
							icon = "axis.jpg";
						} else if (scheme_name.toLowerCase().contains("baroda")) {
							icon = "baroda.jpg";
						} else if (scheme_name.toLowerCase().contains("birla")) {
							icon = "birla.jpg";
						} else if (scheme_name.toLowerCase().contains("bnp")) {
							icon = "bnp.jpg";
						} else if (scheme_name.toLowerCase().contains("boi")) {
							icon = "boi.jpg";
						} else if (scheme_name.toLowerCase().contains("canara")) {
							icon = "canara.jpg";
						} else if (scheme_name.toLowerCase().contains("dsp")) {
							icon = "dsp.jpg";
						} else if (scheme_name.toLowerCase().contains("franklin")) {
							icon = "franklin.jpg";
						} else if (scheme_name.toLowerCase().contains("hdfc")) {
							icon = "hdfc.jpg";
						} else if (scheme_name.toLowerCase().contains("icici")) {
							icon = "icici.jpg";
						} else if (scheme_name.toLowerCase().contains("idbi")) {
							icon = "idbi.jpg";
						} else if (scheme_name.toLowerCase().contains("idfc")) {
							icon = "idfc.jpg";
						} else if (scheme_name.toLowerCase().contains("jm")) {
							icon = "jm.jpg";
						} else if (scheme_name.toLowerCase().contains("jm")) {
							icon = "jm.jpg";
						} else if (scheme_name.toLowerCase().contains("kotak")) {
							icon = "kotak.jpg";
						} else if (scheme_name.toLowerCase().contains("lic")) {
							icon = "lic.jpg";
						} else if (scheme_name.toLowerCase().contains("principal")) {
							icon = "principal.jpg";
						} else if (scheme_name.toLowerCase().contains("nippon")) {
							icon = "nippon.jpg";
						} else if (scheme_name.toLowerCase().contains("sbi")) {
							icon = "sbi.jpg";
						} else if (scheme_name.toLowerCase().contains("sundaram")) {
							icon = "sundaram.jpg";
						} else if (scheme_name.toLowerCase().contains("tata")) {
							icon = "tata.jpg";
						} else if (scheme_name.toLowerCase().contains("uti")) {
							icon = "uti.jpg";
						} else if (scheme_name.toLowerCase().contains("pgim")) {
							icon = "pgim.jpg";
						} else if (scheme_name.toLowerCase().contains("edelweiss")) {
							icon = "edelweiss.jpg";
						} else if (scheme_name.toLowerCase().contains("hsbc")) {
							icon = "hsbc.jpg";
						} else if (scheme_name.toLowerCase().contains("invesco")) {
							icon = "invesco.jpg";
						} else if (scheme_name.toLowerCase().contains("l&t")) {
							icon = "l&t.jpg";
						} else if (scheme_name.toLowerCase().contains("mahindra")) {
							icon = "mahindra.jpg";
						} else if (scheme_name.toLowerCase().contains("mirae")) {
							icon = "mirae.jpg";
						} else if (scheme_name.toLowerCase().contains("motilal")) {
							icon = "motilal.jpg";
						} else if (scheme_name.toLowerCase().contains("essel")) {
							icon = "essel.jpg";
						} else if (scheme_name.toLowerCase().contains("quant")) {
							icon = "quantum.jpg";
						} else if (scheme_name.toLowerCase().contains("taurus")) {
							icon = "taurus.jpg";
						} else if (scheme_name.toLowerCase().contains("union")) {
							icon = "union.jpg";
						} else if (scheme_name.toLowerCase().contains("union")) {
							icon = "union.jpg";
						} else if (scheme_name.toLowerCase().contains("iifl")) {
							icon = "iifl.jpg";
						} else if (scheme_name.toLowerCase().contains("indiabulls")) {
							icon = "indiabulls.jpg";
						} else if (scheme_name.toLowerCase().contains("parag")) {
							icon = "ppfas.jpg";
						} else if (scheme_name.toLowerCase().contains("shriram")) {
							icon = "shriram.jpg";
						} else if (scheme_name.toLowerCase().contains("yes")) {
							icon = "yes.jpg";
						} else if (scheme_name.toLowerCase().contains("iti")) {
							icon = "iti.jpg";
						}
						schemePerformance.setIcon("https://mfapi.advisorkhoj.com/resources/images/amc-icon/" + icon);
						schemePerformance.setScheme_assets(
								Double.parseDouble(String.format("%.2f", schemePerformance.getScheme_assets() / 10)));
					}
					apiTop50FundsResponse.setStatus(StatusCodesAndMessages.SuccessCode);
					apiTop50FundsResponse.setStatus_msg(StatusCodesAndMessages.SuccessMessage);
					apiTop50FundsResponse.setList(list);
				} else {
					apiTop50FundsResponse.setStatus(StatusCodesAndMessages.FailureCode);
					apiTop50FundsResponse.setStatus_msg(StatusCodesAndMessages.FailureMessage);
					apiTop50FundsResponse.setMsg("There are no schemes for the selected category");
				}
			}

			writer.println(gson.toJson(apiTop50FundsResponse));
			writer.close();
		} catch (Exception ex) {
			apiTop50FundsResponse.setStatus(StatusCodesAndMessages.FailureCode);
			apiTop50FundsResponse.setStatus_msg(StatusCodesAndMessages.FailureMessage);
			apiTop50FundsResponse.setMsg("Something went wrong");
			ex.printStackTrace();
		}
		writer.println(gson.toJson(apiTop50FundsResponse));
		writer.close();
	}

	@RequestMapping("/become-a-Truuegro-partner")
	public String become_a_Truuegro_partner(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "become-a-Truuegro-partner");
		request.setAttribute("jsp", "../common/become-a-Truuegro-partner.jsp");
		return "layout/layout";
	}

	@RequestMapping("/payment")
	public String payment(HttpServletRequest request, HttpServletResponse response) {
		try {
			String plan = request.getParameter("plan");

			String email = request.getParameter("email");
			String mobile = request.getParameter("mobile");
			String name = request.getParameter("name");

			if (email == null || StringHelper.isEmpty(email)) {
				email = "";
			}
			if (mobile == null || StringHelper.isEmpty(mobile)) {
				mobile = "";
			}
			if (name == null || StringHelper.isEmpty(name)) {
				name = "";
			}

			Integer amount = 0;

			if (plan.equalsIgnoreCase("Basic"))
				amount = 2999 * 100;
			if (plan.equalsIgnoreCase("Advanced"))
				amount = 6499 * 100;
			if (plan.equalsIgnoreCase("Comprehensive"))
				amount = 11999 * 100;

			if (!name.isEmpty() && !email.isEmpty() && !mobile.isEmpty()) {
				// Test Mode
				// RazorpayClient razorpayClient = new RazorpayClient("rzp_test_jTOx6a9el6PFrI",
				// "I2jYEnCLbmRsfL4YYHAdFp0i");

				// Live Mode
				RazorpayClient razorpayClient = new RazorpayClient("rzp_live_TzF2xqHLFoPOAF",
						"JfOlzssAI3ZtZWCY2Ua9hWxG");

				JSONObject orderRequest = new JSONObject();
				orderRequest.put("amount", amount); // amount in the smallest currency unit
				orderRequest.put("currency", "INR");
				orderRequest.put("receipt", "order_rcptid_11");
				orderRequest.put("payment_capture", false);

				Order order = razorpayClient.Orders.create(orderRequest);

				// System.out.println("json obj -->"+ new Gson().toJson(order));

				String razorpay = "<script src='https://checkout.razorpay.com/v1/checkout.js' "
						+ "data-key='rzp_live_TzF2xqHLFoPOAF' data-amount='" + amount + "' "
						+ "data-currency='INR' data-order_id='" + order.get("id") + "' "
						+ "data-buttontext='Make Payment' data-name='" + plan + "' data-description='MeetTruuegro' "
						+ "data-image='https://www.meetTruuegro.com/img/logo.png' data-prefill.name='" + name + "' "
						+ "data-prefill.email='" + email + "' data-prefill.contact='" + mobile + "' "
						+ "data-theme.color='#283178' id='paymentScript' ></script>";
				request.setAttribute("razorpay", razorpay);

				request.setAttribute("name", name);
				request.setAttribute("email", email);
				request.setAttribute("mobile", mobile);

				request.setAttribute("orderId", order.get("id"));
				request.setAttribute("amount", amount);
			}
			request.setAttribute("pgAmount", (amount / 100));
			request.setAttribute("plan", plan);

			request.setAttribute("page", "payment");
			request.setAttribute("jsp", "../common/payment.jsp");

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "layout/layout";
	}

	/*
	 * @RequestMapping("/payment") public String payment(HttpServletRequest request,
	 * HttpServletResponse response) { try { String plan =
	 * request.getParameter("plan");
	 * 
	 * if(plan == null || StringHelper.isEmpty(plan)) { plan = "Basic" ; }
	 * 
	 * 
	 * Integer amount = 0;
	 * 
	 * if(plan.equalsIgnoreCase("Basic")) amount = 2999;
	 * if(plan.equalsIgnoreCase("Advanced")) amount = 6499;
	 * if(plan.equalsIgnoreCase("Comprehensive")) amount = 11999;
	 * 
	 * 
	 * RazorpayClient razorpayClient = new RazorpayClient("rzp_test_jTOx6a9el6PFrI",
	 * "I2jYEnCLbmRsfL4YYHAdFp0i");
	 * 
	 * JSONObject orderRequest = new JSONObject(); orderRequest.put("amount",
	 * amount); // amount in the smallest currency unit orderRequest.put("currency",
	 * "INR"); orderRequest.put("receipt", "order_rcptid_11");
	 * orderRequest.put("payment_capture", false);
	 * 
	 * Order order = razorpayClient.Orders.create(orderRequest);
	 * 
	 * BridgePlanSubscription bps = new BridgePlanSubscription();
	 * 
	 * bps.setAmount(amount); bps.setPlan(plan);
	 * bps.setRazorpay_order_id(order.get("id"));
	 * commonDao.saveBridgePlanSubscription(bps);
	 * 
	 * //System.out.println("json obj -->"+ new Gson().toJson(order));
	 * 
	 * request.setAttribute("orderId", order.get("id"));
	 * request.setAttribute("pgAmount", amount); request.setAttribute("amount",
	 * amount); request.setAttribute("plan", plan);
	 * 
	 * request.setAttribute("page", "payment"); request.setAttribute("jsp",
	 * "../common/payment.jsp");
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } return "layout/layout"; }
	 */

	@RequestMapping("/payment-success")
	public String payment_success(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String razorpay_order_id = request.getParameter("razorpay_order_id");
		String razorpay_payment_id = request.getParameter("razorpay_payment_id");
		String razorpay_signature = request.getParameter("razorpay_signature");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String plan = request.getParameter("plan");

		// System.out.println("razorpay_order_id --> "+razorpay_order_id);
		// System.out.println("razorpay_payment_id --> "+razorpay_payment_id);
		// System.out.println("razorpay_signature --> "+razorpay_signature);
		// System.out.println("name --> "+name);
		// System.out.println("email --> "+email);
		// System.out.println("mobile --> "+mobile);
		// System.out.println("plan --> "+plan);

		Integer amount = 0;

		if (plan.equalsIgnoreCase("Basic"))
			amount = 2999;
		if (plan.equalsIgnoreCase("Advanced"))
			amount = 6499;
		if (plan.equalsIgnoreCase("Comprehensive"))
			amount = 11999;

		BridgePlanSubscription bps = new BridgePlanSubscription();

		// System.out.println("amount --> "+amount);

		bps.setAmount(amount);
		bps.setPlan(plan);
		bps.setName(name);
		bps.setEmail(email);
		bps.setMobile(mobile);
		bps.setRazorpay_order_id(razorpay_order_id);
		bps.setRazorpay_payment_id(razorpay_payment_id);
		bps.setRazorpay_signature(razorpay_signature);
		bps.setPayment_date(new Date());
		// commonDao.saveBridgePlanSubscription(bps);

		sendEmailUtil.sendPaymentSuccessEmail(email, name, amount, mobile, plan, razorpay_order_id,
				razorpay_payment_id);
		request.setAttribute("bps", bps);

		/*
		 * Enumeration<String> params = request.getParameterNames();
		 * while(params.hasMoreElements()){ String paramName = params.nextElement();
		 * //System.out.println("Parameter Name - "+paramName+", Value - "+request.
		 * getParameter(paramName)); }
		 * 
		 * Enumeration<String> headerNames = request.getHeaderNames();
		 * while(headerNames.hasMoreElements()) { String headerName =
		 * headerNames.nextElement(); //System.out.println("Header Name - " + headerName
		 * + ", Value - " + request.getHeader(headerName)); }
		 * 
		 * String bodyContent = IOUtils.toString(request.getReader());
		 * //System.out.println("Body Content - "+bodyContent);
		 */

		request.setAttribute("page", "payment-success");
		request.setAttribute("jsp", "../common/payment-success.jsp");
		return "layout/layout";
	}

	@RequestMapping("/payment-failure")
	public String payment_failure(HttpServletRequest request, HttpServletResponse response) throws IOException {

		Enumeration<String> params = request.getParameterNames();
		while (params.hasMoreElements()) {
			String paramName = params.nextElement();
			// System.out.println("Parameter Name - "+paramName+", Value -
			// "+request.getParameter(paramName));
		}

		Enumeration<String> headerNames = request.getHeaderNames();
		while (headerNames.hasMoreElements()) {
			String headerName = headerNames.nextElement();
			// System.out.println("Header Name - " + headerName + ", Value - " +
			// request.getHeader(headerName));
		}

		String bodyContent = IOUtils.toString(request.getReader());
		// System.out.println("Body Content - "+bodyContent);

		request.setAttribute("page", "payment-success");
		request.setAttribute("jsp", "../common/payment-success.jsp");
		return "layout/layout";
	}

	@RequestMapping(value = "/send-welcome-letter")
	public void send_welcome_letter(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			// List<UsersBridgeEmailer> list = commonDao.getAllUsersBridgeEmailer();
			List<UsersBridgeEmailer> list = null;
			for (UsersBridgeEmailer user : list) {
				String name = user.getName();
				String pan = user.getPan();
				String password = user.getUser_password();
				String alias = user.getAlias();
				String email = user.getEmail();
				String mobile = user.getMobile();
				String rm_name = user.getRm_name();
				String rm_email = user.getRm_email();
				String rm_mobile = user.getRm_mobile();

				sendEmailUtil.sendWelcomeLetterForExistingClients(name, pan, password, alias, email, mobile, rm_name,
						rm_email, rm_mobile);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	@RequestMapping(value = "/sumo-success")
	public String sumoSuccess(HttpServletRequest request, HttpServletResponse response, String sql) throws Exception {
		try {
			String email = request.getParameter("email");

			if (email == null) {
				email = "";
			}

			email = email.trim();

			if (StringHelper.isEmpty(email)) {

			} else {
				sendEmailUtil.sendSumoSubscriberEmail(email);
				request.setAttribute("jsp", "../common/sumo_success_parameter.jsp");
				return "layout/layout";
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		request.setAttribute("jsp", "../common/sumo_failure_parameter.jsp");
		return "layout/layout";
	}

	@RequestMapping(value = "/factsheet/{amc}/{year}")
	public String factsheet(@PathVariable(value = "amc") String amc, @PathVariable(value = "year") String year,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			if (amc == null) {
				amc = "Axis-Mutual-Fund";
			}
			if (year == null) {
				year = "2021";
			}

			List<String> amcList = new ArrayList<String>();
			amcList.add("Aditya Birla Sun Life Mutual Fund");
			amcList.add("Axis Mutual Fund");
			amcList.add("Baroda Mutual Fund");
			amcList.add("BNP Paribas Mutual Fund");
			amcList.add("BOI AXA Mutual fund");
			amcList.add("Canara Robeco");
			amcList.add("DSP Mutual Fund");
			amcList.add("Edelweiss Mutual Fund");
			amcList.add("Essel Mutual Fund");
			amcList.add("Franklin Templeton Mutual Fund");
			amcList.add("HDFC Mutual Fund");
			amcList.add("HSBC Mutual Fund");
			amcList.add("ICICI Prudential Mutual Fund");
			amcList.add("IDBI Mutual Fund");
			amcList.add("IDFC Mutual Fund");
			amcList.add("IIFL Mutual Fund");
			amcList.add("Indiabulls Mutual Fund");
			amcList.add("Invesco Mutual Fund");
			amcList.add("ITI Mutual Fund");
			amcList.add("JM Financial Mutual Fund");
			amcList.add("Kotak Asset Management");
			amcList.add("L&amp;T Mutual Fund");
			amcList.add("LIC Nomura Mutual Fund");
			amcList.add("Mahindra Mutual Fund");
			amcList.add("Mirae Asset Mutual Fund");
			amcList.add("Motilal Oswal Mutual Fund");
			amcList.add("Mutual Fund");
			amcList.add("Nippon India Mutual Fund");
			amcList.add("PGIM India Mutual Fund");
			amcList.add("PPFAS Mutual Fund");
			amcList.add("Principal Mutual Fund");
			amcList.add("Quant Mutual Fund");
			amcList.add("Quantum Mutual Fund");
			amcList.add("SAHARA Mutual Fund");
			amcList.add("SBI Mutual Fund");
			amcList.add("Shriram Mutual Fund");
			amcList.add("Sundaram Mutual Fund");
			amcList.add("TAURUS Mutual Fund");
			amcList.add("Union Mutual Fund");
			amcList.add("UTI Mutual Fund");

			List<String> yearList = new ArrayList<String>();
			yearList.add(Year.now().toString());
			yearList.add(Year.now().minusYears(1).toString());

			HashMap<String, String> hashMap = new HashMap<String, String>();
			hashMap.put("amc", amc);
			hashMap.put("year", year);

			String formattedUrl, result = "";

			formattedUrl = MfApiAccessor.getFormattedUrl(MfApiUrls.getFactsheet, hashMap);
			result = HttpPost.SendHttpPost(formattedUrl);
			FactsheetAPIResponse factsheetAPIResponse = new Gson().fromJson(result, FactsheetAPIResponse.class);
			// request.setAttribute("amcList", factsheetAPIResponse.getAmcList());
			// request.setAttribute("yearList", factsheetAPIResponse.getYear_list());
			request.setAttribute("factsheetList", factsheetAPIResponse.getFactsheet_list());

			request.setAttribute("amcList", amcList);
			request.setAttribute("yearList", yearList);

			// System.out.println(amc.replace('-', ' '));
			request.setAttribute("camc", amc.replace('-', ' '));
			request.setAttribute("cyear", year);
			request.setAttribute("amcname", factsheetAPIResponse.getAmc_name());

		} catch (Exception ex) {
			ex.printStackTrace();
		}

		request.setAttribute("jsp", "../common/fact-sheet.jsp");
		return "layout/layout";
	}

	@RequestMapping(value = "/mutual-fund-portfolio/{amc}/{year}")
	public String mutual_fund_portfolio(@PathVariable(value = "amc") String amc,
			@PathVariable(value = "year") String year, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		try {
			if (amc == null) {
				amc = "Axis-Mutual-Fund";
			}
			if (year == null) {
				year = "2021";
			}

			// System.out.println(amc);

			List<String> amcList = new ArrayList<String>();
			amcList.add("Aditya Birla Sun Life Mutual Fund");
			amcList.add("Axis Mutual Fund");
			amcList.add("Baroda Mutual Fund");
			amcList.add("BNP Paribas Mutual Fund");
			amcList.add("BOI AXA Mutual fund");
			amcList.add("Canara Robeco");
			amcList.add("DSP Mutual Fund");
			amcList.add("Edelweiss Mutual Fund");
			amcList.add("Essel Mutual Fund");
			amcList.add("Franklin Templeton Mutual Fund");
			amcList.add("HDFC Mutual Fund");
			amcList.add("HSBC Mutual Fund");
			amcList.add("ICICI Prudential Mutual Fund");
			amcList.add("IDBI Mutual Fund");
			amcList.add("IDFC Mutual Fund");
			amcList.add("IIFL Mutual Fund");
			amcList.add("Indiabulls Mutual Fund");
			amcList.add("Invesco Mutual Fund");
			amcList.add("ITI Mutual Fund");
			amcList.add("JM Financial Mutual Fund");
			amcList.add("Kotak Asset Management");
			amcList.add("L&amp;T Mutual Fund");
			amcList.add("LIC Nomura Mutual Fund");
			amcList.add("Mahindra Mutual Fund");
			amcList.add("Mirae Asset Mutual Fund");
			amcList.add("Motilal Oswal Mutual Fund");
			amcList.add("Mutual Fund");
			amcList.add("Nippon India Mutual Fund");
			amcList.add("PGIM India Mutual Fund");
			amcList.add("PPFAS Mutual Fund");
			amcList.add("Principal Mutual Fund");
			amcList.add("Quant Mutual Fund");
			amcList.add("Quantum Mutual Fund");
			amcList.add("SAHARA Mutual Fund");
			amcList.add("SBI Mutual Fund");
			amcList.add("Shriram Mutual Fund");
			amcList.add("Sundaram Mutual Fund");
			amcList.add("TAURUS Mutual Fund");
			amcList.add("Union Mutual Fund");
			amcList.add("UTI Mutual Fund");

			List<String> yearList = new ArrayList<String>();
			yearList.add(Year.now().toString());
			yearList.add(Year.now().minusYears(1).toString());

			HashMap<String, String> hashMap = new HashMap<String, String>();
			hashMap.put("amc", amc.replace('-', ' '));
			hashMap.put("year", year);

			String formattedUrl, result = "";

			formattedUrl = MfApiAccessor.getFormattedUrl(MfApiUrls.getMutualFundPortfolio, hashMap);
			result = HttpPost.SendHttpPost(formattedUrl);
			// System.out.println("URL-->"+result);
			MutualFundPortfolioAPIResponse mutualFundPortfolioAPIResponse = new Gson().fromJson(result,
					MutualFundPortfolioAPIResponse.class);
			// request.setAttribute("amcList", factsheetAPIResponse.getAmcList());
			// request.setAttribute("yearList", factsheetAPIResponse.getYear_list());
			request.setAttribute("factsheetList", mutualFundPortfolioAPIResponse.getPortfolio_list());

			// System.out.println("ttt->"+mutualFundPortfolioAPIResponse.getAmc_name());

			request.setAttribute("amcList", amcList);
			request.setAttribute("yearList", yearList);

			// System.out.println(amc.replace('-', ' '));
			request.setAttribute("camc", amc.replace('-', ' '));
			request.setAttribute("cyear", year);
			request.setAttribute("amcname", mutualFundPortfolioAPIResponse.getAmc_name());

		} catch (Exception ex) {
			ex.printStackTrace();
		}

		request.setAttribute("jsp", "../common/mutualfundportfolio.jsp");
		return "layout/layout";
	}

	@RequestMapping(value = "/.well-known/pki-validation/godaddy.html")
	public String asdsadsadsada(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {

		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return "common/godaddy";
	}

	@RequestMapping("/broking-accounts")
	public String broking_accounts(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("page", "broking-accounts");
		request.setAttribute("jsp", "../common/broking-accounts.jsp");
		return "layout/layout";
	}

	@RequestMapping(value = "/podcasts")
	public String podcasts(@RequestParam(value = "pageid", required = false) String pageid, HttpServletRequest request,
			HttpServletResponse response) {
		try {
			request.setAttribute("page", "podcasts");
			request.setAttribute("jsp", "../common/podcasts.jsp");

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "layout/layout";
	}
}
