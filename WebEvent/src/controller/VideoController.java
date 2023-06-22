package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import constant.sessionAttr;
import entity.History;
import entity.User;
import entity.Video;
import service.HistoryService;
import service.VideoService;
import service.impl.HistoryServiceImpl;
import service.impl.VideoServiceImpl;
@WebServlet(urlPatterns = "/video")
public class VideoController extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private VideoService videoService = new VideoServiceImpl();
	
	private HistoryService historyService = new HistoryServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionParam = req.getParameter("action");
		String href = req.getParameter("id");
		HttpSession session = req.getSession();
		
		switch(actionParam) {
		case "watch":
			doGetWatch(session, href, req, resp);
			break;
		case "like":
			doGetLike(session, href, req, resp);
			break;
		}
	}
	
	private void doGetWatch(HttpSession session , String href , HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Video video = videoService.findByHref(href);
		req.setAttribute("video", video);
		
		User currentUser = (User) session.getAttribute(sessionAttr.CURRENT_USER);
		
		if(currentUser != null) {
			History history = historyService.create(currentUser, video);
			req.setAttribute("flagLikedA", history.getIsLiked());
			
			User user = (User) session.getAttribute(sessionAttr.CURRENT_USER);
			List<History> histories = historyService.findByUser(user.getUsername());
			List<Video> videos = new ArrayList<>();
			histories.forEach(item -> videos.add(item.getVideo()));
			req.setAttribute("videos", videos);
		}
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/videoDetail.jsp");
		requestDispatcher.forward(req, resp);
		
	}
	
	private void doGetLike(HttpSession session , String href , HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("application/json");
		User currentUser = (User) session.getAttribute(sessionAttr.CURRENT_USER);
		boolean result = historyService.updateLikeOrUnlike(currentUser, href);
		if(result == true) {
			resp.setStatus(204); //thuc hien thanh cong nhung khong tra ve data
		}else {
			resp.setStatus(400);
		}
		
	}
}
