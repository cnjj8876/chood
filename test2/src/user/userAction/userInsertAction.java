package user.userAction;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.CommandAction;
import user.userDAO.UserDAO;

public class userInsertAction implements CommandAction{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse reseponse) throws Throwable {
		
		int result=0;
		
		String user_id=request.getParameter("user_id").toString();
		String user_id_2=request.getParameter("user_id_2").toString();
		String user_pw=request.getParameter("user_pw");
		String user_phone_first=request.getParameter("user_phone_first");
		String user_phone=request.getParameter("user_phone");
		String user_regi_num=request.getParameter("user_regi_num");

		HashMap<String, String> param = new HashMap<String,String>();
		param.put("user_id", user_id+user_id_2);
		param.put("user_pw", user_pw);
		param.put("user_phone", user_phone_first+user_phone);
		param.put("user_regi_num", user_regi_num);		
		result = UserDAO.getInstance().userInsert(param);
		System.out.println(result);		
		return "userLogin.jsp";
	}

}
