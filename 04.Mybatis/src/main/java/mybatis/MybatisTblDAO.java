package mybatis;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisTblDAO {
	// 싱글톤 ( static 블럭킹을 이용해서 전역적인 초기화 식 사용.) : 단점 맵퍼 변경사항이나 config.xml변경사항을 다시 읽지않음.
	private static SqlSession sql;
	static {
		System.out.println("싱글톤?");
		String resource = "mybatis/config.xml";
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			sql = sqlSessionFactory.openSession(true);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insert(MybatisTblVO vo) {
		int result = sql.insert("mytbl.insert" , vo);
		return result;
	}
	
	public int update(MybatisTblVO vo) {
		return sql.update("mytbl.update" , vo);
	}
	public int delete(MybatisTblVO vo) {
		return sql.delete("mytbl.delete" , vo);
	}
	public List<MybatisTblVO> select(){
		List<MybatisTblVO> sList = new ArrayList<>();
		//<ClassType,Object> <= 해당하는 타입의 객체만 수집하겠다.
		
		//클래스는 객체를 만들기위한 도구 또는 틀
		//↑클래스로 부터 만들어진 결과물 객체 
		//MybatisTblVO 객체 = new MybatisTblVO();
		//sList.add(객체);
		//sList.add(new MybatisTblVO());
		
		List<MybatisTblVO> list = 
				sql.selectList("mytbl.select");
		return list;
	}
	
	

}
