package kr.sw.web2;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.sw.web2.Util.HttpUtil;
import net.sf.json.JSONObject;

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

	@RequestMapping("/loin")
	public void loin(HttpServletRequest req, HttpServletResponse res) {
		try {
			String url = "https://accounts.kakao.com/login?continue=";
			String url2 = "https://kauth.kakao.com/oauth/authorize";
			url2 += "?client_id=15d3f05a889119af54eb25ef333399df";
			url2 += "&redirect_uri=http://gdj16.gudi.kr:20012/KakaoBack";
			url2 += "&response_type=code";
			url += URLEncoder.encode(url2, "UTF-8");
			System.out.println(url);
			res.sendRedirect(url);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	@RequestMapping("/KakaoBack")
	public String KakaoBack(HttpServletRequest req, Model model) {
		HashMap<String, Object> resultMap = null;
		try {
			// 토큰 요청
			String url = "https://kauth.kakao.com/oauth/token";
			url += "?client_id=15d3f05a889119af54eb25ef333399df&redirect_uri=";
			url += URLEncoder.encode("http://gdj16.gudi.kr:20012/KakaoBack", "UTF-8");
			url += "&code=" + req.getParameter("code");
			url += "&grant_type=authorization_code";
			resultMap = HttpUtil.getUrl(url);
			System.out.println(resultMap);
			
			String access_token = resultMap.get("access_token").toString(); // 사용자 정보 요청
			String userUrl = "https://kapi.kakao.com/v2/user/me"; 
			userUrl +="?access_token=" + access_token; 
			resultMap = HttpUtil.getUrl(userUrl);
			System.out.println(resultMap);
//			System.out.println(resultMap.get("properties"));
			JSONObject jobj = new JSONObject();
			jobj.put("pro", resultMap.get("properties"));
			System.out.println(jobj.get("pro"));
			model.addAttribute("access_token",access_token); 
			model.addAttribute("pro", jobj);
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "web2Home";
	}

}
