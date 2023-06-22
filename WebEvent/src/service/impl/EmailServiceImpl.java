package service.impl;

import javax.servlet.ServletContext;

import entity.User;
import entity.Video;
import service.EmailService;
import utils.sendMailUtil;

public class EmailServiceImpl implements EmailService{

	private static final String EMAIL_WELCOME_SUBJECT = "Welcome to AOE Glalary";
	private static final String EMAIL_FORGOT_PASSWORD = "AOE Glalary - new Password";
	private static final String EMAIL_SHARES_VIDEO = "AOE Glalary - shares Video";
	private static final Video video = new Video();
	
	@Override
	public void sendEmail(ServletContext context, User recipient, String type) {
        String host = context.getInitParameter("host");
        String port = context.getInitParameter("port");
        String user = context.getInitParameter("user");
        String pass = context.getInitParameter("pass");
        
		
        try {
			String content = null;
			String subject = null;
			switch (type) {
				case "welcome":
					subject = EMAIL_WELCOME_SUBJECT;
					content = "Xin chao " + recipient.getUsername() +", Mot ngay tuyet voi";
					break;
				case "forgot":
					subject = EMAIL_FORGOT_PASSWORD;
					content = "Xin chao "+ recipient.getUsername() + "Mat khau moi cua ban: "+ recipient.getPassword();
					break;
				case "shares":
					subject = EMAIL_SHARES_VIDEO;
					content = "Xin chao "+"https://www.youtube.com/embed/";
					break;
				default:
					subject = "AOE Glalary";
					content = "Xin chào bạn đến AOE Glalary";
					break;
			}
			sendMailUtil.sendEmail(host, port, user, pass, recipient.getEmail(), subject, content);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
