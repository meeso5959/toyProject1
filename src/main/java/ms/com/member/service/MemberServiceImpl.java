package ms.com.member.service;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ms.com.member.model.dao.MemberDao;
import ms.com.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private MemberDao memberDao;
	
	
	@Override
	public void insertMember(Member m) {
		// TODO Auto-generated method stub
		int result = memberDao.inserMember(sqlSession, m);
		
	}

}
