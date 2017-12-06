package paging.pagingDAO;

import org.apache.ibatis.session.SqlSession;
import common.CommonDAO;
public class PagingDAO extends CommonDAO{

	public static PagingDAO getInstance() {
		PagingDAO _instance = new PagingDAO();
		_instance.setDatabase();
		return _instance;
	}
	
	public int getTotalRowCnt() {
		SqlSession session = getDatabase().openSession();
		int result =0;
		try {
			result=session.selectOne("paging_sql.getTotalRow");
		} finally {
			session.close();
		}		
		return result;
	}	
}
