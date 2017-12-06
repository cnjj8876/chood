package user.userAction;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.CommandAction;
import user.userDAO.UserDAO;

public class userDeleteAction implements CommandAction{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse reseponse) throws Throwable {
		String user_id=request.getParameter("user_id");
		String page = request.getParameter("page");
		int result=0;
		HashMap<String, String> param = new HashMap<String,String>();
		param.put("user_id", user_id);
		result = UserDAO.getInstance().userDelete(param);
		
		System.out.println(result);
		
		return "/userListView.do?page="+page;
	}

}
