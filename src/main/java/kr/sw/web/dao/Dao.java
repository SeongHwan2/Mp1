package kr.sw.web.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.sw.web.beans.joinBean;


@Repository
public class Dao {
	
	@Autowired
	SqlSession session;
	
	
	public void join(joinBean joBean) {
		System.out.println(session.insert("sql.join", joBean));
	}
	
	public HashMap<String, Object> checkId(joinBean joBean) {
		return session.selectOne("sql.idC", joBean);
	}
}
