package common;

import org.apache.ibatis.session.SqlSessionFactory;

import common.sqlconfig.myBatisDBConnector;

public class CommonDAO {
	private SqlSessionFactory sqlSessionFactory;
	public void setDatabase() {
		sqlSessionFactory  = myBatisDBConnector.getSqlMapInstance();
	}
	protected SqlSessionFactory getDatabase() {
		return sqlSessionFactory;
	}
}
