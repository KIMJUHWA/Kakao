package com.java.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@Autowired
	SqlSession sql;
	
	@RequestMapping("/")
	public String main(Model m, HttpServletRequest req) {
		
		String search = req.getParameter("search");
		MainBean mb = new MainBean();
		mb.setTitle(search);
		mb.setText(search);
		
		List<MainBean> list = sql.selectList("noticeboard.select", mb);
		m.addAttribute("list", list);
		return "main";
	}
	
	@RequestMapping("/write")
	public String write() {
		
		
		return "write";
	}
	
	@RequestMapping("/write/{key}")
	public String writeSQL(@PathVariable("key") String key, MainBean mb) {
		System.out.println(mb.toString());
		switch (key) {
		case "insert":
			sql.insert("noticeboard.insert", mb);
			break;
		case "update":
			sql.update("noticeboard.update", mb);
			break;
		case "delete":
			sql.update("noticeboard.delete", mb);
			break;

		default:
			break;
		}
		return "redirect:/";
	}
	
}
