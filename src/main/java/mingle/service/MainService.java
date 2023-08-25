package mingle.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class MainService {
	private HttpServletRequest request;
	private HttpServletResponse response;
	private final String path="/WEB-INF/view/main/";
	private final String uploadPath="d:/upload/img";
	
	public MainService(HttpServletRequest request, HttpServletResponse response) {
		this.request=request; this.response=response;
	}
	
	public String exec() {
		String cmd=request.getParameter("cmd");
		String view=null;
		if(cmd==null || cmd.equals("main")) 
			return MainPageService();		
		return null;
	}

	private String MainPageService() {		
		return path+"main.jsp";
	}		
	
}
