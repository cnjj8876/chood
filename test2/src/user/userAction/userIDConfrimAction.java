package user.userAction;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.CommandAction;
import user.userDAO.UserDAO;

public class userIDConfrimAction implements CommandAction{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse reseponse) throws Throwable {
		String user_id = request.getParameter("user_id");		
		HashMap<String, String> param =new  HashMap<String, String>();
		param.put("user_id", user_id);		
		int result=UserDAO.getInstance().userIDConfirm(param);
		return "user/userIDConfirm.jsp?result="+result;
	}

}
