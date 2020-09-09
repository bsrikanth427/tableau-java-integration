package com.tableau.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TableauController {
 
	
	private Logger log = LoggerFactory.getLogger(TableauController.class);
	
	@GetMapping("/dashboard")
	public String dashboard(@RequestParam(name="username", required=false, defaultValue="evoke") String name, Model model) {
		
		OutputStreamWriter out = null;
		BufferedReader in = null;
		try {
			// Encode the parameters
			StringBuffer data = new StringBuffer();
			data.append(URLEncoder.encode("username", "UTF-8"));
			data.append("=");
			String user = "evoke";
			data.append(URLEncoder.encode(user, "UTF-8"));

			// Send the request
			log.info("Getting ticket for user " + user);
			
			URL url = new URL("http://ec2-52-22-222-135.compute-1.amazonaws.com/trusted");
			URLConnection conn = url.openConnection();
			conn.setDoOutput(true);
			out = new OutputStreamWriter(conn.getOutputStream());
			out.write(data.toString());
			out.flush();

			// Read the response
			StringBuffer rsp = new StringBuffer();
			in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line;
			while ((line = in.readLine()) != null) {
				rsp.append(line);
			}
			String ticket = rsp.toString();
			log.info("Ticket: " + ticket);
			model.addAttribute("ticket", ticket);
			model.addAttribute("dashboardLink", prepareDashboardUrl(ticket));

		} catch (Exception e) {
			log.error(e.getMessage());
			//throw e;
		} finally {
			try {
				if (in != null)
					in.close();
				if (out != null)
					out.close();
			} catch (IOException e) {
			}
		}
		
		return "dashboard";
	}
	
	private String prepareDashboardUrl(String ticket) {
		String baseUrl = "http://ec2amaz-b5c660f/trusted/";
		StringBuilder builder = new StringBuilder();
		return builder.append(ticket)
		       .append("/views")
		       .append("/Regional")
		       .append("/College").toString();
		
	}
	
	@GetMapping("/verify")
	public String login(Model model) {
		model.addAttribute("name", "name");
		return "signIn";
		
	}

}
