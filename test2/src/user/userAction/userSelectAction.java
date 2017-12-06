package user.userAction;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.CommandAction;
import user.User;
import user.userDAO.UserDAO;

public class userSelectAction implements CommandAction{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse reseponse) throws Throwable {
		String user_id = request.getParameter("user_id");
		String page = request.getParameter("page");
		
		HashMap<String ,String> param= new HashMap<String,String>();
		param.put("user_id", user_id);
		
		User user = UserDAO.getInstance().userSelect(param);
		
		request.setAttribute("user", user);
		return "user/userInfoView.jsp?page="+page;
	}

}
