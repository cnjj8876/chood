package board.boardAction;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import board.Board;
import board.boardDAO.BoardDAO;
import common.controller.CommandAction;
import paging.Paging;
import paging.pagingDAO.PagingDAO;

public class listViewAction implements CommandAction{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse reseponse) throws Throwable {
		try {
		int limitRow = 3;
		int page=Integer.parseInt(request.getParameter("page").toString());	
		int limitPage =3;
		
		Paging makePage =new Paging();
		makePage.setCurrPage(page);
		makePage.setRowLimit(limitRow);
		makePage.setPageLimit(limitPage);
		makePage.setCurrBlock(page/(limitPage+1));
		makePage.startRowNumSet();
		
		HashMap<String, Integer> paramMap = new HashMap<String,Integer>();
		paramMap.put("limit", limitRow);
		paramMap.put("offset", makePage.getRowStartNum());
				
		System.out.println("페이지 파라메터 : "+page);
		
		ArrayList<Board> listBoard=(ArrayList<Board>) BoardDAO.getInstance().listView(paramMap);
		int getPaging = PagingDAO.getInstance().getTotalRowCnt();
		
		
		makePage.setTotalRow(getPaging);
		makePage.pageingSet();
		makePage.getRowStartNum();
		
		
		request.setAttribute("listBoard", listBoard);
		request.setAttribute("paging", makePage);
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "board/BoardListView.jsp";
	}

}
