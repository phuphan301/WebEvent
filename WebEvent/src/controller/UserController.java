package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import constant.sessionAttr;
import entity.User;
import service.EmailService;
import service.UserService;
import service.impl.EmailServiceImpl;
import service.impl.UserServiceImpl;
@WebServlet({"/login", "/logout", "/register", "/forgotPass", "/changePass"})
public class UserController extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private UserService userService = new UserServiceImpl();
	private EmailService emailService = new EmailServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		String path = req.getServletPath();
		switch(path) {
		case "/login":
			doGetLogin(req, resp);
			break;
		case "/register":
			doGetRegister(req,resp);
			break;
		case "/logout": 
			doGetLogout(session,req,resp);
			break;
		case "/forgotPass":
			doGetforgotPass(req,resp);
			break;
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		String path = req.getServletPath();
		switch(path) {
		case "/login":
			doPostLogin(session,req, resp);
			break;
		case "/register":
			doPostRegister(session,req, resp);
			break;
		case "/forgotPass":
			doPostForgotPass(req, resp);
			break;
		case "/changePass":
			doPostChangePass(session,req, resp);
			break;
		}
	}
	
	private void doGetLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/user/index.jsp");
		requestDispatcher.forward(req, resp);
	}
	
	private void doGetRegister(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/user/index.jsp");
		requestDispatcher.forward(req, resp);
	}
	
	private void doGetLogout(HttpSession session, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		session.removeAttribute(sessionAttr.CURRENT_USER);
		resp.sendRedirect("index");
	}
	
	private void doGetforgotPass(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/user/index.jsp");
		requestDispatcher.forward(req, resp);
	}
	
	private void doPostLogin(HttpSession session, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		User user = userService.login(username, password);
		if(user != null) {
			session.setAttribute(sessionAttr.CURRENT_USER, user);
			resp.sendRedirect("index");
			System.out.println("Login success");
		}else {
			resp.sendRedirect("index");
			System.out.println("Login fail");
		}
	}
	
	private void doPostRegister(HttpSession session, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		//String confirm = req.getParameter("confirmPassword");
		String email = req.getParameter("email");
		
		User user = userService.create(username, password, email);
		if(user != null) {
			emailService.sendEmail(getServletContext(), user, "XinChao");
			session.setAttribute(sessionAttr.CURRENT_USER, user);
			resp.sendRedirect("index");
			System.out.println("Register success");
		}else {
			resp.sendRedirect("index");
			System.out.println("Register fail");
		}
	}
	
	private void doPostForgotPass(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("application/json");
		String email = req.getParameter("emailForgot");
		User userWithNewPass = userService.resetPassword(email);
		
		if(userWithNewPass != null) {
			emailService.sendEmail(getServletContext(), userWithNewPass, "forgot");
			resp.setStatus(204);
		}else {
			resp.setStatus(400);
		}
	}
	private void doPostChangePass(HttpSession session,HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("application/json");
		String currentPass = req.getParameter("currentPass");
		String newPass = req.getParameter("newPass");
		
		User currentUser = (User) session.getAttribute(sessionAttr.CURRENT_USER);

		if(currentUser.getPassword().equals(currentPass)) {
			currentUser.setPassword(newPass);
			User updateUser = userService.update(currentUser);
			if(updateUser != null) {
				session.setAttribute(sessionAttr.CURRENT_USER, currentUser);
				resp.setStatus(204);
			}else {
				resp.setStatus(400);
			}
		}else {
			resp.setStatus(400);
		}
	}
}
