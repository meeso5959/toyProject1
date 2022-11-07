package ms.com.member.model.dao;

import java.util.Date;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import ms.com.member.model.vo.Member;

@Repository
public class MemberDao {

	//mapper로 넘기는 
	public int inserMember(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.insert("memberMapper.inserMember", m);
	}


}
