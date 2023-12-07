package member;

import common.MybatisConnection;

public class MemberDAO extends MybatisConnection implements MemberService{

	public MemberDAO() {
		super(DataResource.HANUL);
	}

	@Override
	public int member_join(MemberVO vo) {
		return 0;
	}

	@Override
	public int member_idCheck(String user_id) {
		return 0;
	}

	@Override
	public MemberVO member_login(MemberVO vo) {
		return sql.selectOne("me.login" , vo);
	}
	
	@Override
	public int member_update(MemberVO vo) {
		return 0;
	}

	@Override
	public int member_delete(MemberVO vo) {
		return 0;
	}

	//진행예정(x)
	@Override
	public void findPassWord(MemberVO vo) {}

}
