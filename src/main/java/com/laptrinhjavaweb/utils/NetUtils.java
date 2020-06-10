package com.laptrinhjavaweb.utils;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Request;

public class NetUtils {
	public static String GetResult(String url) {
		try {
			return Request.Get(url).setHeader("Accept-Charset", "utr-8").execute().returnContent().asString();
		} catch (ClientProtocolException ex) {
			Logger.getLogger(NetUtils.class.getName()).log(Level.SEVERE, null,ex);
		} catch(IOException e) {
			Logger.getLogger(NetUtils.class.getName()).log(Level.SEVERE, null,e);
		}
		return null;
	}
}
