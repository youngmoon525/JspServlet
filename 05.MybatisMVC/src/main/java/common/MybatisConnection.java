package common;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisConnection {
	
	protected SqlSession sql;
	
	//Enum 열거형 데이터 타입
	//상수들을 이용해서 boolean가진 단점을 보완하여 상태정보를 표시하는 용도로 많이 사용함.
	//boolean : 통신 상태를 표시 : 통신이 열림 , 닫힘. 
//	public enum Connection{
//		CONNECTION,
//		DISCONNECTION,
//		ING
//	}
	
	public enum DataResource{
		HANUL("common/hanulconfig.xml"),
		HR("common/hrconfig.xml");
		private final String config;
		private DataResource(String config) {
			this.config = config;
		}
		
		public String getConfig() {
			return config;
		}
	}
	
	
	public MybatisConnection(DataResource res) {
		String resource = res.getConfig();
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			sql = sqlSessionFactory.openSession(true);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	

}
