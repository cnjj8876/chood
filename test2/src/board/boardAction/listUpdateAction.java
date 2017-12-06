package board.boardAction;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.boardDAO.BoardDAO;
import common.controller.CommandAction;

public class listUpdateAction  implements CommandAction{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse reseponse) throws Throwable {
		
		request.setCharacterEncoding("UTF-8");
		String noBoard=request.getParameter("no_board").toString();
		String title=request.getParameter("title").toString();
		String content=request.getParameter("content").toString();
		
		HashMap<String, String> paramMap = new HashMap<String, String> ();
		paramMap.put("no_board", noBoard);
		paramMap.put("title", title);
		paramMap.put("content", content);
		int result=BoardDAO.getInstance().listUpdate(paramMap);
		
		if(result!=1)
		{
			return "#";
		}
		return "/listSelect.do?no_board="+noBoard;
	}

}
