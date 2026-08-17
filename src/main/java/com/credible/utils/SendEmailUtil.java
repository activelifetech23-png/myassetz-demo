package com.credible.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Repository;

import com.cribbstechnologies.clients.mandrill.exception.RequestFailedException;
import com.cribbstechnologies.clients.mandrill.model.MandrillAttachment;
import com.cribbstechnologies.clients.mandrill.model.MandrillHtmlMessage;
import com.cribbstechnologies.clients.mandrill.model.MandrillMessageRequest;
import com.cribbstechnologies.clients.mandrill.model.MandrillRecipient;
import com.cribbstechnologies.clients.mandrill.model.response.message.SendMessageResponse;
import com.cribbstechnologies.clients.mandrill.request.MandrillMessagesRequest;
import com.cribbstechnologies.clients.mandrill.request.MandrillRESTRequest;
import com.cribbstechnologies.clients.mandrill.util.MandrillConfiguration;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.itextpdf.text.pdf.codec.Base64;

import freemarker.template.SimpleHash;

@SuppressWarnings("deprecation")
@Repository
public class SendEmailUtil 
{
	@Autowired
	ServletContext servletContext;
		
	@Autowired
	HttpServletRequest httpServletRequest;
	
	@Autowired
    private Environment env;
	
	public static final String ZEPTO_API_KEY = "PHtE6r0JE7jui29+o0IF5vXqQ8GhN958+7gyeFRFsdpAW6BQFk1crYojkTTiokwpBqVGF/LNwN5uub/N4O+CcG6+YGlOWGqyqK3sx/VYSPOZsbq6x00ctF0bf0bcXYbmcddj3SHVuN7dNA==";
	
	@SuppressWarnings("unused")
	@Async
	public void sendMail(MailMessage mailMessage) 
	{
		try {
			
			MandrillRESTRequest request = new MandrillRESTRequest();
			MandrillConfiguration config = new MandrillConfiguration();
			MandrillMessagesRequest messagesRequest = new MandrillMessagesRequest();
			ObjectMapper mapper = new ObjectMapper();
			
			HttpClient client = new DefaultHttpClient();
			request.setHttpClient(client);
			
			config.setApiKey("md-tPoa4NotFCX5E35kjkE6vA");
			config.setApiVersion("1.0");
			config.setBaseURL("https://mandrillapp.com/api");
			
			request.setConfig(config);
			request.setObjectMapper(mapper);
			messagesRequest.setRequest(request);
			
			MandrillMessageRequest mmr = new MandrillMessageRequest();
			MandrillHtmlMessage message = new MandrillHtmlMessage();
			Map<String, String> headers = new HashMap<String, String>();
			
			message.setFrom_email(mailMessage.getFrom());
			message.setFrom_name(mailMessage.getSenderName());
			message.setHeaders(headers);
			message.setHtml(mailMessage.getMessage());
			message.setSubject(mailMessage.getSubject());
			
			int recipient_size = mailMessage.getToList().size() + mailMessage.getCcList().size() + mailMessage.getBccList().size();
			MandrillRecipient[] recipients = new MandrillRecipient[recipient_size];
			int i = 0;
			
			// add To recipients
			List<String> toRecip = mailMessage.getToList();
			if (toRecip.size() > 0)
			{
				for (String email : toRecip) 
				{
					recipients[i++] = new MandrillRecipient("", email, "to");
				}
			}
			
			// add CC recipients
			List<String> ccRecip = mailMessage.getCcList();
			if (ccRecip.size() > 0)
			{
				for (String email : ccRecip) 
				{
					recipients[i++] = new MandrillRecipient("", email, "cc");
				}
			}
			
			// add CC recipients
			List<String> bccRecip = mailMessage.getBccList();
			if (bccRecip.size() > 0)
			{
				for (String email : bccRecip) 
				{
					recipients[i++] = new MandrillRecipient("", email, "bcc");
				}
			}
						
			message.setTo(recipients);
			message.setTrack_clicks(true);
			message.setTrack_opens(true);
			
			// Add Attachments
			List<String> attachments_arr = mailMessage.getAttachmentFiles();
			if (attachments_arr.size() > 0)
			{
				List<MandrillAttachment> messageContentList = new ArrayList<MandrillAttachment>();
				for (String fileName : attachments_arr) 
				{					
					File file = new File(fileName);
					String name = file.getName();
					String type = httpServletRequest.getServletContext().getMimeType(name);
				    String content = Base64.encodeFromFile(file.getPath());
					
				    MandrillAttachment messageContent = new MandrillAttachment(type, name, content);
				    messageContentList.add(messageContent);
				}
				message.setAttachments(messageContentList);
			}		
			mmr.setMessage(message);
			SendMessageResponse response = messagesRequest.sendMessage(mmr);
			
			String toList = "";
			for(int k = 0; k < toRecip.size(); k++)
			{
				if(k == (toRecip.size()-1))
				{
					toList += toRecip.get(k);
				}else{
					toList += toRecip.get(k) + ",";
				}
			}
			
			String ccList = "";
			for(int k = 0; k < ccRecip.size(); k++)
			{
				if(k == (ccRecip.size()-1))
				{
					ccList += ccRecip.get(k);
				}else{
					ccList += ccRecip.get(k) + ",";
				}
			}
			
			String bccList = "";
			for(int k = 0; k < bccRecip.size(); k++)
			{
				if(k == (bccRecip.size()-1))
				{
					bccList += bccRecip.get(k);
				}else{
					bccList += bccRecip.get(k) + ",";
				}
			}
			
			//logEmailRepository.saveEmailLog(toList, ccList, bccList, mailMessage.getSubject(), mailMessage.getMessage());
			
		} catch (RequestFailedException e) {
			e.printStackTrace();
		}
	}
	
	public void sendSubscriberEmail(String email) throws Exception 
    {	    	
		try 
		{

			String subject = "Shilpa Associates - Email Subscription";
			
			//System.out.println("email89-->"+email);
			
			SimpleHash simpleHash = new SimpleHash();
			simpleHash.put("email", email);
			simpleHash.put("host", "http://www.shilpa-associates.com/");
			
			String message = FTLHelper.getMailBody(simpleHash, "subscribe.ftl", servletContext);
			MailMessage mailMessage = new MailMessage(subject, message);
			
			mailMessage.setSenderName(env.getProperty("mail_support_name"));
			mailMessage.setFrom(env.getProperty("mail_support_email"));
			
			List<String> toAddress = new ArrayList<String>();
			String to = env.getProperty("admin_email");
			toAddress.add(to);
			mailMessage.setToList(toAddress);
			
			sendZeptoMail("PKFINANCIALSERVICES",mailMessage);
		} 
		catch (Exception ex) 
		{			
			ex.printStackTrace();
		}
	}
	
	public void sendSubscriberEmailIndustry(String email, String industry, ServletContext context) throws Exception 
    {	    	
		try 
		{
			String subject = "Myassetz  - Email Subscription";
			
			SimpleHash simpleHash = new SimpleHash();
			simpleHash.put("email", email);
			simpleHash.put("industry", industry);
			simpleHash.put("host", "https://www.meetMoneyflow Investments .com/");
			
			String message = FTLHelper.getMailBody(simpleHash, "subscribe1.ftl", context);
			MailMessage mailMessage = new MailMessage(subject, message);
			
			mailMessage.setSenderName(env.getProperty("mail_support_name"));
			mailMessage.setFrom(env.getProperty("mail_support_email"));
			
			List<String> toAddress = new ArrayList<String>();
			String to = env.getProperty("admin_email");
			toAddress.add(to);
			mailMessage.setToList(toAddress);
			
			sendZeptoMail("PKFINANCIALSERVICES",mailMessage);
		} 
		catch (Exception ex) 
		{			
			ex.printStackTrace();
		}
	}
	
	public void sendSubscriberConfirmationEmail(String email, ServletContext context) throws Exception 
    {	    	
		try 
		{
			String subject = "Myassetz  - Email Subscription Confirmation";
			
			SimpleHash simpleHash = new SimpleHash();
			simpleHash.put("email", email);
			simpleHash.put("host", "https://www.meetMoneyflow Investments .com/");
			
			String message = FTLHelper.getMailBody(simpleHash, "welcomeuser.ftl", context);
			MailMessage mailMessage = new MailMessage(subject, message);
			
			mailMessage.setSenderName(env.getProperty("mail_support_name"));
			mailMessage.setFrom(env.getProperty("mail_support_email"));
			
			List<String> toAddress = new ArrayList<String>();
			toAddress.add(email);
			mailMessage.setToList(toAddress);
			
			sendZeptoMail("PKFINANCIALSERVICES",mailMessage);
		} 
		catch (Exception ex) 
		{			
			ex.printStackTrace();
		}
	}
	
	public void sendContactDetails(String name,String email,String subject,String message,String support_email,String company, String phone) throws Exception 
	{
		try 
		{
			String subject1 = "Myassetz - Contact Us";
			
			SimpleHash simpleHash = new SimpleHash();
			simpleHash.put("name", name);
			simpleHash.put("email", email);
			simpleHash.put("phone", phone);
			simpleHash.put("subject", subject);
			simpleHash.put("message", message);
			//String host = properties.getHostDomainUrl();
			simpleHash.put("host", "https://www.advisorkhoj.com/");
			
			String message1 = FTLHelper.getMailBody(simpleHash, "contactdetails.ftl", servletContext);
			MailMessage mailMessage = new MailMessage(subject1, message1);
		
			mailMessage.setSenderName(env.getProperty("mail_support_name"));
			mailMessage.setFrom(env.getProperty("mail_support_email"));
			
			List<String> toAddress = new ArrayList<String>();
			toAddress.add(env.getProperty("admin_email"));
			mailMessage.setToList(toAddress);
			
			/*List<String> bccAddress = new ArrayList<String>();
			toAddress.add(properties.getSupport_email());
			mailMessage.setBccList(bccAddress);*/ 
			
			sendZeptoMail("PKFINANCIALSERVICES",mailMessage);
		} 
		catch (Exception ex) 
		{
			ex.printStackTrace();
		}
	}
	
	public void sendUserContactConformation(String name,String email,String support_email) throws Exception 
	{
		try 
		{
			String subject2 = "Myassetz  - Contact Confirmation";
			
			SimpleHash simpleHash = new SimpleHash();
			simpleHash.put("name", name);
			simpleHash.put("email", email);
			
			String message2 = FTLHelper.getMailBody(simpleHash, "userdetails.ftl", servletContext);
			MailMessage mailMessage = new MailMessage(subject2, message2);
		
			mailMessage.setSenderName(env.getProperty("mail_support_name"));
			mailMessage.setFrom(env.getProperty("mail_support_email"));
			
			List<String> toAddress = new ArrayList<String>();
			toAddress.add(email);
			mailMessage.setToList(toAddress);
			
			sendZeptoMail("PKFINANCIALSERVICES",mailMessage);
		} 
		catch (Exception ex) 
		{
			ex.printStackTrace();
		}
	}
	
	public void sendVerificationCode(String name, String email, String v_code) throws Exception 
	{
		try 
		{
			String subject = "Moneyflow Investments  - Verification Code";
			
			SimpleHash simpleHash = new SimpleHash();
			simpleHash.put("name", name);
			simpleHash.put("v_code", v_code);
			simpleHash.put("host", "https://www.meetMoneyflow Investments .com/");
			
			String message = FTLHelper.getMailBody(simpleHash, "verificationCode.ftl", servletContext);
			MailMessage mailMessage = new MailMessage(subject, message);
		
			mailMessage.setSenderName(env.getProperty("mail_support_name"));
			mailMessage.setFrom(env.getProperty("mail_support_email"));
			
			List<String> toAddress = new ArrayList<String>();
			toAddress.add(email);
			mailMessage.setToList(toAddress);
			
			List<String> bccAddress = new ArrayList<String>();
			bccAddress.add(env.getProperty("admin_email"));
			mailMessage.setBccList(bccAddress);
			
			sendZeptoMail("PKFINANCIALSERVICES",mailMessage);
		} 
		catch (Exception ex) 
		{
			ex.printStackTrace();
		}
	}

	public void sendWelcomeMailForUser(String name, String email, String mobile, String password, String pan) throws Exception 
	{
		try 
		{
			String subject = "Moneyflow Investments  - New User Details";
			
			SimpleHash simpleHash = new SimpleHash();
			simpleHash.put("name", name);
			simpleHash.put("mobile", mobile);
			simpleHash.put("email", email);
			simpleHash.put("pan", pan);
			simpleHash.put("password", password);
			
			String message = FTLHelper.getMailBody(simpleHash, "newuserdetails.ftl", servletContext);
			MailMessage mailMessage = new MailMessage(subject, message);
			
			mailMessage.setSenderName(env.getProperty("mail_support_name"));
			mailMessage.setFrom(env.getProperty("mail_support_email"));
			
			List<String> toAddress = new ArrayList<String>();
			toAddress.add(env.getProperty("admin_email"));
			mailMessage.setToList(toAddress);
			
			sendZeptoMail("PKFINANCIALSERVICES",mailMessage);
		} 
		catch (Exception ex) 
		{
			ex.printStackTrace();
		}
	}

	public void sendWelcomeMailForSignupUser(String name, String email, String pan, String password) throws Exception 
	{
		try 
		{
			SimpleHash simpleHash = new SimpleHash();
			simpleHash.put("name", name);
			simpleHash.put("login", pan);
			simpleHash.put("password", password);
			
			String mail_support_name = env.getProperty("mail_support_name");
			String mail_support_email = env.getProperty("mail_support_email");
			String subject = "Moneyflow Investments  - Login Credentials";
			
			String message = FTLHelper.getMailBody(simpleHash, "userlogincredentials.ftl", servletContext);
			MailMessage mailMessage = new MailMessage(subject, message);
		
			mailMessage.setSenderName(mail_support_name);
			mailMessage.setFrom(mail_support_email);
			
			List<String> toAddress = new ArrayList<String>();
			toAddress.add(email);
			mailMessage.setToList(toAddress);
			
			List<String> bccAddress = new ArrayList<String>();
			bccAddress.add(env.getProperty("admin_email"));
			mailMessage.setBccList(bccAddress);
			
			sendZeptoMail("PKFINANCIALSERVICES",mailMessage);
		} 
		catch (Exception ex) 
		{
			ex.printStackTrace();
		}
	}	
	
	public void sendAssociateActivation(String name,String user_id,String password,String email, String attachment_path) throws Exception 
	{
		try 
		{
			String subject = "Moneyflow Investments  - Partners Login Activation";
			
			SimpleHash simpleHash = new SimpleHash();
			simpleHash.put("name", name);
			simpleHash.put("user_id", user_id);
			simpleHash.put("password", password);
			simpleHash.put("host", "https://www.meetMoneyflow Investments .com/");
			
			String message = FTLHelper.getMailBody(simpleHash, "associateActivation.ftl", servletContext);
			MailMessage mailMessage = new MailMessage(subject, message);
		
			mailMessage.setSenderName("Moneyflow Investments ");
			mailMessage.setFrom("partners@meetMoneyflow Investments .com");
			
			List<String> toAddress = new ArrayList<String>();
			toAddress.add(email);
			mailMessage.setToList(toAddress);
			
			List<String> bccAddress = new ArrayList<String>();
			bccAddress.add("partners@meetMoneyflow Investments .com");
			mailMessage.setBccList(bccAddress);
			
			List<String> attachmentList = new ArrayList<String>();
			attachmentList.add(attachment_path);
			mailMessage.setAttachmentFiles(attachmentList);
			
			sendZeptoMail("PKFINANCIALSERVICES",mailMessage);
		} 
		catch (Exception ex) 
		{
			ex.printStackTrace();
		}
	}
	
	public void sendWelcomeMailAssociate(String name,String user_id,String password,String email) throws Exception 
	{
		try 
		{
			String subject = "Welcome On-board to the Moneyflow Investments  Partners Program";
			
			SimpleHash simpleHash = new SimpleHash();
			simpleHash.put("name", name);
			simpleHash.put("user_id", user_id);
			simpleHash.put("password", password);
			simpleHash.put("host", "https://www.meetMoneyflow Investments .com/");
			
			String message = FTLHelper.getMailBody(simpleHash, "associateWelcome.ftl", servletContext);
			MailMessage mailMessage = new MailMessage(subject, message);
		
			mailMessage.setSenderName("Moneyflow Investments ");
			mailMessage.setFrom("partners@meetMoneyflow Investments .com");
			
			List<String> toAddress = new ArrayList<String>();
			toAddress.add(email);
			mailMessage.setToList(toAddress);
			
			List<String> bccAddress = new ArrayList<String>();
			bccAddress.add("partners@meetMoneyflow Investments .com");
			mailMessage.setBccList(bccAddress);
			
			sendZeptoMail("PKFINANCIALSERVICES",mailMessage);
		} 
		catch (Exception ex) 
		{
			ex.printStackTrace();
		}
	}
	
	public void sendAssociateRegEmail(String email_content) throws Exception 
    {	    	
		try 
		{
			String subject = "Moneyflow Investments  - Associate Registration";
			
			SimpleHash simpleHash = new SimpleHash();
			simpleHash.put("name", "Admin");
			simpleHash.put("email_content", email_content);
			simpleHash.put("host", "https://www.meetMoneyflow Investments .com/");
			
			String message = FTLHelper.getMailBody(simpleHash, "dataattachment.ftl", servletContext);
			MailMessage mailMessage = new MailMessage(subject, message);
			
			mailMessage.setSenderName("Moneyflow Investments ");
			mailMessage.setFrom("partners@meetMoneyflow Investments .com");
			
			List<String> bccAddress = new ArrayList<String>();
			bccAddress.add("partners@meetMoneyflow Investments .com");
			mailMessage.setBccList(bccAddress);
			
			sendZeptoMail("PKFINANCIALSERVICES",mailMessage);
		} 
		catch (Exception ex) 
		{			
			ex.printStackTrace();
		}
	}
	
	public void sendEmailForSignupUsertoAdmin(String name, String pan, String email, String mobile) throws Exception 
    {	    	
		try 
		{
			String subject = "Truuegro - New User Signup";
			
			SimpleHash simpleHash = new SimpleHash();
			simpleHash.put("name", name);
			simpleHash.put("pan", pan);
			simpleHash.put("email", email);
			simpleHash.put("mobile", mobile);
			simpleHash.put("host", "https://www.meetTruuegro.com/");
			
			String message = FTLHelper.getMailBody(simpleHash, "signup.ftl", servletContext);
			MailMessage mailMessage = new MailMessage(subject, message);
			
			mailMessage.setSenderName(env.getProperty("mail_support_name"));
			mailMessage.setFrom(env.getProperty("mail_support_email"));
			
			List<String> toAddress = new ArrayList<String>();
			String to = env.getProperty("mail_support_email");
			toAddress.add(to);
			mailMessage.setToList(toAddress);
			
			List<String> bccAddress = new ArrayList<String>();
			bccAddress.add(env.getProperty("admin_email"));
			mailMessage.setBccList(bccAddress);
			
			sendZeptoMail("PKFINANCIALSERVICES",mailMessage);
		} 
		catch (Exception ex) 
		{			
			ex.printStackTrace();
		}
	}
	
	public void sendEmailForSignupUser(String name, String pan, String email, String password) throws Exception 
    {	    	
		try 
		{
			String subject = "Introducing The Vault: Truuegro";
			
			SimpleHash simpleHash = new SimpleHash();
			simpleHash.put("name", name);
			simpleHash.put("pan", pan);
			simpleHash.put("email", email);
			simpleHash.put("password", password);
			simpleHash.put("host", "https://www.meetTruuegro.com/");
			
			String message = FTLHelper.getMailBody(simpleHash, "Truuegrosignupuser.ftl", servletContext);
			MailMessage mailMessage = new MailMessage(subject, message);
			
			mailMessage.setSenderName(env.getProperty("mail_support_name"));
			mailMessage.setFrom(env.getProperty("mail_support_email"));
			
			List<String> toAddress = new ArrayList<String>();
			toAddress.add(email);
			mailMessage.setToList(toAddress);
			
			List<String> bccAddress = new ArrayList<String>();
			bccAddress.add(env.getProperty("admin_email"));
			mailMessage.setBccList(bccAddress);
			
			sendZeptoMail("PKFINANCIALSERVICES",mailMessage);
		} 
		catch (Exception ex) 
		{			
			ex.printStackTrace();
		}
	}
	
	public void sendWelcomeLetterForExistingClients(String name,String pan,String password,String alias,String email,String mobile,String rm_name,String rm_email,String rm_mobile) throws Exception 
	{
		try 
		{
			String subject = "Introducing The Vault: Truuegro";
			
			SimpleHash simpleHash = new SimpleHash();
			simpleHash.put("name", name);
			simpleHash.put("pan", pan);
			simpleHash.put("password", password);
			simpleHash.put("alias", alias);
			simpleHash.put("email", email);
			simpleHash.put("mobile", mobile);
			simpleHash.put("rm_name", rm_name);
			simpleHash.put("rm_email", rm_email);
			simpleHash.put("rm_mobile", rm_mobile);
			simpleHash.put("host", "https://www.meetTruuegro.com/");
			
			String message = FTLHelper.getMailBody(simpleHash, "welcomeExistingClient.ftl", servletContext);
			MailMessage mailMessage = new MailMessage(subject, message);
		
			mailMessage.setSenderName(env.getProperty("admin_name"));
			mailMessage.setFrom(env.getProperty("admin_email"));
			
			List<String> toAddress = new ArrayList<String>();
			toAddress.add(email);
			mailMessage.setToList(toAddress);
			
			List<String> bccAddress = new ArrayList<String>();
			bccAddress.add(env.getProperty("admin_email"));
			//bccAddress.add(properties.getSupport_email());
			mailMessage.setBccList(bccAddress);
			
			sendZeptoMail("PKFINANCIALSERVICES",mailMessage);
		} 
		catch (Exception ex) 
		{
			ex.printStackTrace();
		}
	}
	
	public void sendWelcomeLetterForFpClients(String name,String pan,String password,String alias,String email,String mobile,String rm_name,String rm_email,String rm_mobile) throws Exception 
	{
		try 
		{
			String subject = "Introducing The Vault: Truuegro";
			
			SimpleHash simpleHash = new SimpleHash();
			simpleHash.put("name", name);
			simpleHash.put("pan", pan);
			simpleHash.put("password", password);
			simpleHash.put("alias", alias);
			simpleHash.put("email", email);
			simpleHash.put("mobile", mobile);
			simpleHash.put("rm_name", rm_name);
			simpleHash.put("rm_email", rm_email);
			simpleHash.put("rm_mobile", rm_mobile);
			simpleHash.put("host", "https://www.meetTruuegro.com/");
			
			String message = FTLHelper.getMailBody(simpleHash, "welcomeFpClient.ftl", servletContext);
			MailMessage mailMessage = new MailMessage(subject, message);
		
			mailMessage.setSenderName(env.getProperty("admin_name"));
			mailMessage.setFrom(env.getProperty("admin_email"));
			
			List<String> toAddress = new ArrayList<String>();
			toAddress.add(email);
			mailMessage.setToList(toAddress);
			
			List<String> bccAddress = new ArrayList<String>();
			bccAddress.add(env.getProperty("admin_email"));
			mailMessage.setBccList(bccAddress);
			
			sendZeptoMail("PKFINANCIALSERVICES",mailMessage);
		} 
		catch (Exception ex) 
		{
			ex.printStackTrace();
		}
	}
	
	public void sendSumoSubscriberEmail(String email) throws Exception 
    {	    	
		try 
		{
			String subject = "Thank you for signing up with Truuegro";
			
			SimpleHash simpleHash = new SimpleHash();
			simpleHash.put("email", email);
			simpleHash.put("host", "https://www.meetTruuegro.com/");
			
			String message = FTLHelper.getMailBody(simpleHash, "Truuegro-sumo-subscribers.ftl", servletContext);
			MailMessage mailMessage = new MailMessage(subject, message);
			
			mailMessage.setSenderName(env.getProperty("admin_name"));
			mailMessage.setFrom(env.getProperty("admin_email"));
			
			List<String> toAddress = new ArrayList<String>();
			toAddress.add(email);
			mailMessage.setToList(toAddress);
			
			List<String> bccAddress = new ArrayList<String>();
			bccAddress.add(env.getProperty("admin_email"));
			mailMessage.setBccList(bccAddress);
			
			sendZeptoMail("PKFINANCIALSERVICES",mailMessage);
		} 
		catch (Exception ex) 
		{			
			ex.printStackTrace();
		}
	}
	
	public void sendPaymentSuccessEmail(String email, String name, Integer amount, String mobile, String plan, String orderId, String paymentId) throws Exception 
    {	    	
		try 
		{
			String subject = "Payment Confirmation - MeetTruuegro";
			
			SimpleHash simpleHash = new SimpleHash();
			simpleHash.put("name", name);
			simpleHash.put("amount", amount);
			simpleHash.put("mobile", mobile);
			simpleHash.put("plan", plan);
			simpleHash.put("orderId", orderId);
			simpleHash.put("paymentId", paymentId);
			simpleHash.put("email", email);
			simpleHash.put("host", "https://www.meetTruuegro.com/");
			
			String message = FTLHelper.getMailBody(simpleHash, "payment-success.ftl", servletContext);
			MailMessage mailMessage = new MailMessage(subject, message);
			
			mailMessage.setSenderName(env.getProperty("admin_name"));
			mailMessage.setFrom(env.getProperty("admin_email"));
			
			List<String> toAddress = new ArrayList<String>();
			toAddress.add(email);
			mailMessage.setToList(toAddress);
			
			List<String> bccAddress = new ArrayList<String>();
			bccAddress.add(env.getProperty("admin_email"));
			mailMessage.setBccList(bccAddress);
			
			sendZeptoMail("PKFINANCIALSERVICES",mailMessage);
		} 
		catch (Exception ex) 
		{			
			ex.printStackTrace();
		}
	}
	public void sendZeptoMail(String client_name, MailMessage mailMessage) 
    {
        try 
        {
            ObjectMapper mapper = new ObjectMapper();

            URL url = new URL("https://api.zeptomail.in/v1.1/email");

            HttpURLConnection conn = (HttpURLConnection) url.openConnection();

            conn.setRequestMethod("POST");

            conn.setRequestProperty("Authorization", "Zoho-enczapikey "+ZEPTO_API_KEY);

            conn.setRequestProperty("Content-Type", "application/json");

            conn.setDoOutput(true);
 
            Map<String, Object> requestMap = new LinkedHashMap<>();

            requestMap.put("from", Map.of("address", mailMessage.getFrom(),"name", mailMessage.getSenderName())

            );
 
            // TO Recipients

            List<Map<String, Map<String, String>>> toList = mailMessage.getToList().stream().map(to -> 

                Map.of("email_address", Map.of("address", to, "name", ""))

            ).collect(Collectors.toList());

            requestMap.put("to", toList);
 
            // CC Recipients

            List<Map<String, Map<String, String>>> ccList = mailMessage.getCcList().stream().map(cc -> 

                Map.of("email_address", Map.of("address", cc, "name", ""))

            ).collect(Collectors.toList());

            if (!ccList.isEmpty()) requestMap.put("cc", ccList);
 
            // BCC Recipients

            List<Map<String, Map<String, String>>> bccList = mailMessage.getBccList().stream().map(bcc -> 

                Map.of("email_address", Map.of("address", bcc, "name", ""))

            ).collect(Collectors.toList());

            if (!bccList.isEmpty()) requestMap.put("bcc", bccList);
 
            // Subject & Body

            requestMap.put("subject", mailMessage.getSubject());

            requestMap.put("htmlbody", mailMessage.getMessage());
 
            // Tracking

            requestMap.put("track_opens", true);

            requestMap.put("track_clicks", true);

            requestMap.put("client_reference", client_name);

            List<String> fileCacheKeys = uploadFileToZepto(mailMessage.getAttachmentFiles());
 
	        // Build ZeptoMail attachments structure

	         if (!fileCacheKeys.isEmpty()) {

	             List<Map<String, String>> attachList = new ArrayList<>();

	             for (String key : fileCacheKeys) {

	                 attachList.add(Map.of("file_cache_key", key));

	             }

	             requestMap.put("attachments", attachList);

	         }
 
            // Optional headers

            requestMap.put("mime_headers", Map.of("X-Custom-Header", "TrackerApp"));
 
            // Send JSON payload

            String payload = mapper.writeValueAsString(requestMap);

            //System.out.println("payload = " + payload);

            try (OutputStream os = conn.getOutputStream()) {

                os.write(payload.getBytes(StandardCharsets.UTF_8));

            }
 
            int code = conn.getResponseCode();

            if (code == 200 || code == 201 || code == 202) {

                System.out.println("Email sent successfully via ZeptoMail.");

            } else {

                System.out.println("Failed to send email. Code: " + code);

            }
 
            // Log the send

            String toStr = String.join(",", mailMessage.getToList());

            String ccStr = String.join(",", mailMessage.getCcList());

            String bccStr = String.join(",", mailMessage.getBccList());
 
        } catch (Exception e) {

            e.printStackTrace();

        }

    }
	
	public static List<String> uploadFileToZepto(List<String> attachmentPaths) throws IOException 

    {

        List<String> uploadedFileIds = new ArrayList<>();
 
        for (String path : attachmentPaths) 

        {

            File file = new File(path);

            String fileName = file.getName();
 
            URL url = new URL("https://api.zeptomail.in/v1.1/files?name=" + URLEncoder.encode(fileName, "UTF-8"));

            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
 
            conn.setRequestMethod("POST");

            conn.setRequestProperty("Authorization", "Zoho-enczapikey " + ZEPTO_API_KEY);

            conn.setRequestProperty("Content-Type", "text/plain");

            conn.setDoOutput(true);
 
            byte[] fileBytes = Files.readAllBytes(file.toPath());
 
            try (OutputStream os = conn.getOutputStream()) {

                os.write(fileBytes);

            }
 
            InputStream responseStream = conn.getResponseCode() >= 200 && conn.getResponseCode() < 300

                    ? conn.getInputStream()

                    : conn.getErrorStream();
 
            BufferedReader br = new BufferedReader(new InputStreamReader(responseStream));

            StringBuilder jsonResponse = new StringBuilder();

            String line;

            while ((line = br.readLine()) != null) {

                jsonResponse.append(line.trim());

            }

            br.close();
 
            // Extract file reference ID from response

            String responseStr = jsonResponse.toString();

            String fileId = extractFileCacheKey(responseStr); // custom method below
 
            if (fileId != null) {

                uploadedFileIds.add(fileId);

            }

        }
 
        return uploadedFileIds;

    }
 
    public static String extractFileCacheKey(String jsonResponse) 

    {

    	JsonObject json = JsonParser.parseString(jsonResponse).getAsJsonObject();

        if (json.has("file_cache_key")) 

        {

            return json.get("file_cache_key").getAsString();

        }

        return null;

    }
	
}
