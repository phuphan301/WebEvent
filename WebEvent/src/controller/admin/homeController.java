package controller.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;

import constant.sessionAttr;
import dto.UserDto;
import dto.VideoLikedInfo;
import entity.User;
import service.StatsService;
import service.UserService;
import service.impl.StatsServiceImpl;
import service.impl.UserServiceImpl;

@WebServlet(urlPatterns = {"/admin","/admin/Favorites"}, name="homeCtrlAdmin")
public class homeController extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private StatsService statsService = new StatsServiceImpl();
	private UserService userService = new UserServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		User currentUser = (User) session.getAttribute(sessionAttr.CURRENT_USER);
		if(currentUser != null && currentUser.getIsAdmin() == Boolean.TRUE) {
			
			String path = req.getServletPath();
			switch(path) {
			case "/admin":
				doGetHome(req, resp);
				break;
			case "/admin/Favorites":
				doGetFavorites(req,resp);
				break;
			}
			
			
		}else {
			resp.sendRedirect("index");
		}
		
	}
	
	private void doGetHome(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		List<VideoLikedInfo> videos = statsService.findVideoLikedInfos();
		req.setAttribute("videos", videos);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/admin/home.jsp");
		requestDispatcher.forward(req, resp);
	}
	//localhost:8080/webEvent/admin/favorites?href=${videoHref}
	private void doGetFavorites(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		PrintWriter out = resp.getWriter();
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		String videoHref = req.getParameter("href");
		List<UserDto> users = userService.findUserLikedByVideoHref(videoHref);
		if(users.isEmpty()) {
			resp.setStatus(400);
		}else {
			ObjectMapper mapper = new ObjectMapper();
			String dataResponse = mapper.writeValueAsString(users);
			resp.setStatus(200);
			out.print(dataResponse);
			out.flush();
		}
	}
}
