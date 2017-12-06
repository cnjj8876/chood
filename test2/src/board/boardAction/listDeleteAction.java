package board.boardAction;

import java.io.File;
import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import board.boardDAO.BoardDAO;
import common.controller.CommandAction;

public class listDeleteAction implements CommandAction{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse reseponse) throws Throwable {
		
		String page = request.getParameter("page").toString();
		String fileName = request.getParameter("file_name").toString();
		@SuppressWarnings("deprecation")
		String uploadFileName = request.getRealPath("/upload")+"/"+fileName;
		
		HashMap<String, String> paramMap = new HashMap<String,String>();
		paramMap.put("no_board",  request.getParameter("no_board").toString());
		int result=BoardDAO.getInstance().listDelete(paramMap);
		
		if(result!=1)
		{
			return "#";
		}
		else {
			File uploadFile = new File(uploadFileName);
			if(uploadFile.exists()&&uploadFile.isFile()) {
				uploadFile.delete();
			}
		}
		return "/listView.do?page"+page;
	}
}
