package kr.sw.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.sw.web.beans.loginBean;
import kr.sw.web.dao.Dao;
import net.sf.json.JSONObject;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	@Autowired
	Dao d;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "home";
	}
	
	@RequestMapping(value="/login")
	public String login(HttpServletRequest req) {
		String userId = req.getParameter("userId");
		String password = req.getParameter("password");
		System.out.println(userId + " : " + password);
		return "login";
	}
	
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String join() {
		System.out.println("get");
		return "join";
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String join(HttpServletRequest req, @Valid loginBean loBean, BindingResult result) {
			System.out.println("Post");
			String msg = "";
			if(result.hasErrors()) {
				System.out.println("result has error!");
				List<ObjectError> errors = result.getAllErrors();
				for(ObjectError error : errors) {
					System.out.println("error : " +  error.getDefaultMessage());
					msg = error.getDefaultMessage();
					req.setAttribute("msg", msg);
//				 System.out.println(req.getAttribute("msg"));
				}
				return "join";
			}else {
				String id = loBean.getId();
				String pw = loBean.getPassword();
				String nick = loBean.getNickname();
				System.out.println(loBean);
				System.out.println(id + " : " + pw + " : " + nick);
				d.join(loBean);
				return "login";
			}
		
	}
	
	@RequestMapping("/idCheck")
	public void idCheck(loginBean loBean, HttpServletRequest req, HttpServletResponse res) {
		boolean check = d.checkId(loBean);
		JSONObject jobj = new JSONObject();
		jobj.put("check", check);
		
		try {
			res.setCharacterEncoding("UTF-8");
			res.setContentType("application/json; charset=UTF-8");
			res.getWriter().write(jobj.toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
