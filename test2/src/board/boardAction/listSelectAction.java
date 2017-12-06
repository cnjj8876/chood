package board.boardAction;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.Board;
import board.boardDAO.BoardDAO;
import common.controller.CommandAction;

public class listSelectAction  implements CommandAction{

	@SuppressWarnings("deprecation")
	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse reseponse) throws Throwable {
		
		String noBoard = (String) request.getParameter("no_board");
		String page = (String) request.getParameter("page");
		
		
		HashMap<String, String> no_board = new HashMap<String,String>();
		no_board.put("no_board", noBoard);

		Board board=BoardDAO.getInstance().listSelect(no_board);
		board.setFile_path(request.getRealPath("/upload").toString());

		request.setAttribute("selectBoard", board);
		
		return "/board/BoardSelectView.jsp?page="+page;
	}

}
