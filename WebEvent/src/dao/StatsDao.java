package dao;

import java.util.List;

import dto.VideoLikedInfo;
import entity.User;

public interface StatsDao {
	List<VideoLikedInfo> findVideoLikeInfo();
}
