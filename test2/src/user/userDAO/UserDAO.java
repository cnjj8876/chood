package user.userDAO;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import common.CommonDAO;
import user.User;

public class UserDAO extends CommonDAO implements UserDAOlmp{
	
	public static UserDAO getInstance() {
		UserDAO _instance= new UserDAO();
		_instance.setDatabase();
		return _instance;
	}
	
	@Override
	public int userDelete(HashMap<String, String> param) {
		SqlSession session = getDatabase().openSession();
		int result=0;
		try {
			result = session.update("user_sql.userDelete", param);
			if(result==1) {
				session.commit();
			}
		}finally {
			session.close();
		}
		return 0;
	}

	@Override
	public int userUpdate(HashMap<String, String> param) {
		SqlSession session = getDatabase().openSession();
		int result=0;
		try {
			result = session.update("user_sql.userUpdate", param);
			if(result==1) {
				session.commit();
			}
		}finally {
			session.close();
		}
		return 0;
	}

	@Override
	public int userInsert(HashMap<String, String> param) {
		SqlSession session = getDatabase().openSession();
		int result=0;
		try {
			result = session.update("user_sql.userInsert", param);
			if(result==1) {
				session.commit();
			}
		}finally {
			session.close();
		}
		return 0;
	}

	@Override
	public User userSelect(HashMap<String, String> param) {
		SqlSession session = getDatabase().openSession();
		User user = new User();
		try {
			user = session.selectOne("user_sql.userSelect", param);
		}finally {
			session.close();
		}
		return user;
	}

	@Override
	public List<User> userListView(HashMap<String, Integer> param) {
		SqlSession session = getDatabase().openSession();
		List<User> user  = null;
		try {
			user= session.selectList("user_sql.userListView", param);
		}finally {
			session.close();
		}
		return user;
	}

	@Override
	public int userLogin(HashMap<String, String> param) {
		SqlSession session = getDatabase().openSession();
		int result=0;
		try {
			result = session.selectOne("user_sql.userLogin", param);
		}finally {
			session.close();
		}
		return result;
	}

	@Override
	public int userIDConfirm(HashMap<String, String> param) {
		SqlSession session = getDatabase().openSession();
		int result=0;
		try {
			result = session.selectOne("user_sql.userIdConfirm", param);
		}finally {
			session.close();
		}
		return result;
	}

}
