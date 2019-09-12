package kr.sw.web.service;

import java.util.HashMap;
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
	
	public int ud(HashMap<String, Object> params) {
		System.out.println(params.toString());
		String type = (String) params.get("type");
		ListBean lbean = (ListBean) params.get("lbean");
		System.out.println(d.update(lbean));
		switch(type) {
		case "3":
			return d.update(lbean);
		case "2":
			return d.delete(lbean);
		default:
			return 0;
		}
	}
}
