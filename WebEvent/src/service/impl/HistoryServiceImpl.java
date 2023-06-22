package service.impl;

import java.sql.Timestamp;
import java.util.List;

import dao.HistoryDao;
import dao.impl.HistoryDaoImpl;
import entity.History;
import entity.User;
import entity.Video;
import service.HistoryService;
import service.VideoService;

public class HistoryServiceImpl implements HistoryService{
	
	private HistoryDao dao;
	private VideoService videoService = new VideoServiceImpl();
	
	public HistoryServiceImpl() {
		dao = new HistoryDaoImpl();
	}
	
	@Override
	public List<History> findByUser(String username) {
		// TODO Auto-generated method stub
		return dao.findByUser(username);
	}

	@Override
	public List<History> findByUserAndIsLiked(String username) {
		// TODO Auto-generated method stub
		return dao.findByUserAndIsLiked(username);
	}

	@Override
	public History findByUserIdAndVideoId(Integer userId, Integer videoId) {
		// TODO Auto-generated method stub
		return dao.findByUserIdAndVideoId(userId, videoId);
	}

	@Override
	public History create(User user, Video video) {
		History existHistory = findByUserIdAndVideoId(user.getId(), video.getId());
		if(existHistory == null) {
			existHistory = new History();
			existHistory.setUser(user);
			existHistory.setVideo(video);
			existHistory.setViewedDate(new Timestamp(System.currentTimeMillis()));
			existHistory.setIsLiked(Boolean.FALSE);
			return dao.create(existHistory);
		}
		return existHistory;
	}

	@Override
	public boolean updateLikeOrUnlike(User user, String videoHref) {
		Video video = videoService.findByHref(videoHref);
		History exsistHistory = findByUserIdAndVideoId(user.getId(), video.getId());
		if(exsistHistory.getIsLiked() == Boolean.FALSE) {
			exsistHistory.setIsLiked(Boolean.TRUE);
			exsistHistory.setLikedDate(new Timestamp(System.currentTimeMillis()));
		}else {
			exsistHistory.setIsLiked(Boolean.FALSE);
			exsistHistory.setLikedDate(null);
		}
		History updateHistory = dao.update(exsistHistory);
		return updateHistory !=null ? true : false;
	}
	
}
