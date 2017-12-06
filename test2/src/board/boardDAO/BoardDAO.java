package board.boardDAO;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import board.Board;
import common.CommonDAO;

public class BoardDAO extends CommonDAO implements BoardDAOImp{
	public static BoardDAO getInstance() {
		BoardDAO _instance = new BoardDAO();
		_instance.setDatabase();
		return _instance;
	}

	@Override
	public int listDelete(HashMap<String, String> board) {
		SqlSession session= getDatabase().openSession();
		int result=0;
		try {
			result=session.update("board_sql.listDelete", board);
			if(result==1) {
				session.commit();
			}
		}finally {
			session.close();
		}
		return result;
	}

	@Override
	public int listInsert(HashMap<String, String> board) {
		SqlSession session= getDatabase().openSession();
		int result=0;
		try {
			result=session.insert("board_sql.listInsert", board);
			if(result==1) {
				session.commit();
			}
		}finally {
			session.close();
		}
		return result;
	}

	@Override
	public Board listSelect(HashMap<String, String> noBoard) {
		SqlSession session= getDatabase().openSession();
		Board board=new Board();
		try {
			board=session.selectOne("board_sql.listSelect", noBoard);
		}
		finally {
			session.close();
		}
		return board;
	}

	@Override
	public int listUpdate(HashMap<String, String> board) {
		SqlSession session= getDatabase().openSession();
		int result=0;
		try {
			result=session.update("board_sql.listUpdate", board);
			if(result==1) {
				session.commit();
			}
		}finally {
			session.close();
		}
		return result;
	}

	@Override
	public List<Board> listView(HashMap<String, Integer> page) {
		SqlSession session= getDatabase().openSession();
		List<Board> list = new ArrayList<Board>();
		try {
			list=session.selectList("board_sql.listView",page);
		}
		finally {
			session.close();
		}
		return list;
	}

}
