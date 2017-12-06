package user.userAction;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.CommandAction;
import user.userDAO.UserDAO;

public class userLoginAction implements CommandAction{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse reseponse) throws Throwable {
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		System.out.println(user_id);
		
		HashMap<String, String> param =new  HashMap<String, String>();
		param.put("user_id", user_id);
		param.put("user_pw", user_pw);
		
		int result=UserDAO.getInstance().userLogin(param);
		
		System.out.println(result);
		
		if(result!=1) {
			return "userLogin.jsp";
		}
		return "listView.do?page=1";
	}

}
