package customer;

import java.util.List;

import common.MybatisConnection;

public class CustomerDAO extends MybatisConnection{

	public CustomerDAO() {
		super(DataResource.HANUL);
	}
	public List<CustomerVO> select(String query){
		return sql.selectList("cu.select" , query);
	}
	
	public void delete(int customer_id) {
		System.out.println(sql.delete("cu.delete",customer_id));
	}
	
	public void insert(CustomerVO vo) {
		System.out.println("인서트 : " + sql.insert("cu.insert" , vo));
	}
	
	public void update(CustomerVO vo) {
		System.out.println("update : " + sql.update("cu.update" , vo));
	}
}
