package mingle.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.JsonObject;

import mingle.member.MemberDAO;
import mingle.member.MemberVO;

public class MemberService {
	private HttpServletRequest request;
	private HttpServletResponse response;
	private final String path = "/WEB-INF/view/member/";

	public MemberService(HttpServletRequest req, HttpServletResponse resp) {
		request = req;
		response = resp;
	}

	public String exec() throws IOException {
		String cmd = request.getParameter("cmd");
		if (cmd.equals("login")) {
			return loginservice();
		} else if (cmd.equals("logout")) {			
			HttpSession s = request.getSession();
			s.invalidate();
			return "main?cmd=main";
		} else if (cmd.equals("signup")) {
			return signupservice();
		} else if (cmd.equals("idCheck")) {
			 MemberidcheckService();
		} 
		return null;
	}

	private String loginservice() {
		String method = request.getMethod().toUpperCase();
		if (method.equals("GET")) {
			return path + "login.jsp";
		} else {// post
			String id = request.getParameter("userid");
			String pwd = request.getParameter("pwd");
			MemberDAO dao = MemberDAO.getInstance();
			MemberVO mvo = dao.login(id, pwd);
			if (mvo != null) {// 로그인 성공
				// 세션 저장->request를 통해서 세션객체 얻기
				HttpSession session = request.getSession();
				session.setAttribute("mvo", mvo);
				return "main?cmd=main";
			} else {// 로그인 실패
				request.setAttribute("message", "로그인 실패!");
				return path + "login.jsp";
			}
		}
	}

	private String signupservice() {
		String method = request.getMethod().toUpperCase();
		if (method.equals("GET")) {
			return path + "signup.jsp";
		} else {
			String id = request.getParameter("uid");
			String pwd = request.getParameter("pwd");
			String name = request.getParameter("name");
			int age = Integer.parseInt(request.getParameter("age"));
			String email = request.getParameter("umail");
			String addr = request.getParameter("addr");
			String mobile = request.getParameter("phone");
			MemberDAO dao = MemberDAO.getInstance();
			MemberVO vo = new MemberVO(id, pwd, name, age, email, addr, mobile);
			int result = dao.insertMember(vo);
			if (result == 1) {
				return path + "login.jsp";
			} else {
				request.setAttribute("message", "회원가입 실패!");
			}
		}
		return null;
	}
	
	
	
	//아이디 중복체크
	private void MemberidcheckService() throws IOException {
		String id = request.getParameter("id");
		MemberDAO dao= MemberDAO.getInstance();
		int result = dao.idCheck(id);
		JsonObject ob = new JsonObject();
		if (result == 0) {
			ob.addProperty("message", "사용 가능한 아이디입니다.");
		} else
			ob.addProperty("message", "이미 존재하는 아이디입니다.");
		ob.addProperty("result", result);
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(ob);
		out.flush();
		out.close();
	}
	
}