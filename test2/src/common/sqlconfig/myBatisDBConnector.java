package common.sqlconfig;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class myBatisDBConnector {
	public static SqlSessionFactory sqlSessionFactory;
	static {
		try{
			String resource = "SqlMapConfig.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream); 			
		}
		catch(IOException e){
			e.printStackTrace();
		}
	}
	public static SqlSessionFactory getSqlMapInstance() {
		return sqlSessionFactory;
	}
}
