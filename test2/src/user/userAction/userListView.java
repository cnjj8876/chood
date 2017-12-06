package user.userAction;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.CommandAction;
import paging.Paging;
import paging.pagingDAO.PagingDAO;
import user.User;
import user.userDAO.UserDAO;

public class userListView implements CommandAction{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse reseponse) throws Throwable {
		int limitRow = 3;
		int page=Integer.parseInt(request.getParameter("page").toString());	
		int limitPage =3;
		
		Paging makePage =new Paging();
		makePage.setCurrPage(page);
		makePage.setRowLimit(limitRow);
		makePage.setPageLimit(limitPage);
		makePage.setCurrBlock(page/(limitPage+1));
		makePage.startRowNumSet();
		
		HashMap<String, Integer> param = new HashMap<String,Integer>();
		param.put("limit", limitRow);
		param.put("offset", makePage.getRowStartNum());
		
		System.out.println("페이지 파라메터 : "+page);
		
		ArrayList<User> result = (ArrayList<User>) UserDAO.getInstance().userListView(param);
		int getPaging = PagingDAO.getInstance().getTotalRowCnt();
		
		makePage.setTotalRow(getPaging);
		makePage.pageingSet();
		makePage.getRowStartNum();
		
		request.setAttribute("userList", result);
		request.setAttribute("paging", makePage);
		return "user/userListView.jsp";
	}

}
