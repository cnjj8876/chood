package board.boardAction;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import board.boardDAO.BoardDAO;
import common.controller.CommandAction;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


public class listInsertAction  implements CommandAction{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse reseponse) throws Throwable {
		String title=null;
		String id_insert=null;
		String content = null;
		
		@SuppressWarnings("deprecation")
		String savePath= request.getRealPath("/upload");
		int sizeLimit = 10*1024*1024;
		String fileName=null;
		
		MultipartRequest multi = new MultipartRequest(request, savePath,sizeLimit,"UTF-8",new DefaultFileRenamePolicy());
		
		
		fileName=multi.getFilesystemName("fileName");
		title = multi.getParameter("title").toString();
		id_insert = multi.getParameter("id_insert").toString();
		content = multi.getParameter("content").toString();
		
		HashMap<String, String> paramMap = new HashMap<String,String>();
		paramMap.put("title",title);
		paramMap.put("id_insert",id_insert);
		paramMap.put("content",content);
		paramMap.put("file_name",fileName);

		int result = BoardDAO.getInstance().listInsert(paramMap);
		
		if(result!=1) {
			return "board/BoardListView.jsp";
		}
		return "/listView.do?page=1";
	}

}
