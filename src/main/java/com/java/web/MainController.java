package com.java.web;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@Autowired
	SqlSession sql;
	
	@RequestMapping("/")
	public String main(Model m) {
		List<MainBean> list = sql.selectList("noticeboard.select");
		m.addAttribute("list", list);
		return "main";
	}
}
