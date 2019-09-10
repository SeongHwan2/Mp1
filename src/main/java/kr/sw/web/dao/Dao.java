package kr.sw.web.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.sw.web.beans.loginBean;

@Repository
public class Dao {
	
	@Autowired
	SqlSession session;
	
	public void join(loginBean loBean) {
		System.out.println(session.insert("sql.join", loBean));
	}
	
}
