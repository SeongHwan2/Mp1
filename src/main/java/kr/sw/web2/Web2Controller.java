package kr.sw.web2;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Web2Controller {

	@RequestMapping("/write")
	public String write() {
		return "write";
	}
	
	@RequestMapping("/home2")
	public String web2home() {
		return "web2Home";
	}
}
