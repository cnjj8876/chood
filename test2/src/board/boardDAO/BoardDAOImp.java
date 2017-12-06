package board.boardDAO;

import java.util.HashMap;
import java.util.List;
import board.Board;

public interface BoardDAOImp {
	public int listDelete (HashMap<String, String> board);
	public int listInsert (HashMap<String, String> board);
	public Board listSelect (HashMap<String, String> noBoard);
	public int listUpdate (HashMap<String, String> board);
	public List<Board> listView(HashMap<String, Integer> page);
}
