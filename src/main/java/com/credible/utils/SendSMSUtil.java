
package com.credible.utils;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component("SendSMSUtil")
public class SendSMSUtil 
{
	
	private String sendSMS(String message, String mobileNo) throws NoSuchAlgorithmException, KeyManagementException,UnsupportedEncodingException, IOException 
	{
		try
		{
			String url = "http://alerts.solutionsinfini.com/api/web2sms.php";
			String queryString = "";
			
			HashMap<String, String> haspMap = new HashMap<String, String>();
			haspMap.put("workingkey", "A202d9136e08e6019f751671cc3fd10c3");
			haspMap.put("sender", "MFPORT");
			haspMap.put("to", mobileNo);
			haspMap.put("message", message);
						
			Iterator it = haspMap.entrySet().iterator();
    	    while (it.hasNext()) 
    	    {
    	        Map.Entry pairs = (Map.Entry)it.next();
    	        if(it.hasNext())
                {
                	queryString += pairs.getKey() + "=" + URLEncoder.encode(pairs.getValue().toString()) + "&";
                }
                else
                {
                	queryString += pairs.getKey() + "=" + URLEncoder.encode(pairs.getValue().toString());
                }
    	        it.remove(); // avoids a ConcurrentModificationException
    	    }
    	    String formattedUrl = url +"?" + queryString;
    	        	    
    	    String response = Utils.SendHttpPost(formattedUrl,"");
    	        	    
    	    //logDAO.saveSMSLog(mobileNo, message, response);
    	    
			return response;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return null;
	}

	public String sendSMStoValidateMobile(String mobileNo, String v_code) 
	{
		try {
			String message = v_code + " is your one time password and it is valid for the next 15 mins. Thank you, MFPORTFOLIO.";
			sendSMS(message, mobileNo);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}
}
