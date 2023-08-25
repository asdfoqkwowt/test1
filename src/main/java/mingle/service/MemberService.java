package mingle.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

	public String exec() {
		String cmd = request.getParameter("cmd");
		if (cmd.equals("login")) {
			return LoginService();
		} else if (cmd.equals("logout")) {
			// 세션얻기
			HttpSession s = request.getSession();
			// 세션 지우기
			s.invalidate();
			return path + "main.jsp";
		} else if (cmd.equals("signup")) {
			return SignupService();
		}
		return null;
	}

	private String LoginService() {
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

	private String SignupService() {
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
}