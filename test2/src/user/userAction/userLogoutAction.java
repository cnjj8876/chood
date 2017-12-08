package user.userAction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.controller.CommandAction;

public class userLogoutAction implements CommandAction{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse reseponse) throws Throwable {
		
		HttpSession session = request.getSession();
		session.invalidate();
		return "userLogin.jsp";
	}

}
