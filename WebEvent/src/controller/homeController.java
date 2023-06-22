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

@WebServlet(urlPatterns = {"/index", "/favorite", "/history"})
public class homeController extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = -3036399463359197149L;
	private static final int VIDEO_MAX_PAGE_SIZE = 3;
	private VideoService videoService = new VideoServiceImpl();
	private HistoryService historyService = new HistoryServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		String path = req.getServletPath();
		switch(path) {
		case "/index":
			doGetIndex(req, resp);
			break;
		case "/favorite":
			doGetFavorite(session,req,resp);
			break;
		case "/history":
			doGetHistory(session,req,resp);
			break;
		}
			
	}
	
	private void doGetIndex(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Video> countVideo = videoService.findAll();
		int maxPage = (int) Math.ceil(countVideo.size()/ (double) VIDEO_MAX_PAGE_SIZE);
		req.setAttribute("maxPage", maxPage);
		
		List<Video> videos;
		String pageNumber = req.getParameter("page");
		
		if(pageNumber == null || Integer.valueOf(pageNumber)>maxPage) {
			videos = videoService.findAll(1,VIDEO_MAX_PAGE_SIZE);
			req.setAttribute("currrentPage", 1);
		}else {
			videos = videoService.findAll(Integer.valueOf(pageNumber),VIDEO_MAX_PAGE_SIZE);
			req.setAttribute("currrentPage", Integer.valueOf(pageNumber));
		}
		req.setAttribute("videos", videos);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/user/index.jsp");
		requestDispatcher.forward(req, resp);
	}
	
	private void doGetFavorite(HttpSession session ,HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User user = (User) session.getAttribute(sessionAttr.CURRENT_USER);
		List<History> histories = historyService.findByUserAndIsLiked(user.getUsername());
		List<Video> videos = new ArrayList<>();
		histories.forEach(item -> videos.add(item.getVideo()));
		req.setAttribute("videos", videos);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/user/favorites.jsp");
		requestDispatcher.forward(req, resp);
	}
	
	private void doGetHistory(HttpSession session ,HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User user = (User) session.getAttribute(sessionAttr.CURRENT_USER);
		List<History> histories = historyService.findByUser(user.getUsername());
		List<Video> videos = new ArrayList<>();
		histories.forEach(item -> videos.add(item.getVideo()));
		req.setAttribute("videos", videos);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/user/history.jsp");
		requestDispatcher.forward(req, resp);
	}
}
