package kr.sw.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.sw.web.beans.ListBean;
import kr.sw.web.dao.Dao;

@Service
public class ListService {
	
	@Autowired
	Dao d;
	
	public List<ListBean> select() {
		List<ListBean> result = d.select();
		System.out.println(result);
		String title = result.get(0).getTitle();
		System.out.println(title);
		return result;
	}
	
	public void cud() {
		
	}
}
