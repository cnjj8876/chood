package user.userDAO;

import java.util.HashMap;
import java.util.List;

import user.User;

public interface UserDAOlmp {
	//data
	public int userDelete(HashMap<String, String> param);
	public int userUpdate(HashMap<String, String> param);
	public int userInsert(HashMap<String, String> param);
	
	//select
	public User userSelect(HashMap<String, String> param);
	public List<User> userListView(HashMap<String, Integer> param);
	
	//기타 
	public int userLogin(HashMap<String, String> param);
	public int userIDConfirm(HashMap<String, String> param);
}
