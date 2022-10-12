package com.screen.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.screen.dao.UserInfoDao;
import com.screen.model.QuestionBank;
import com.screen.model.UserInfo;

import net.bytebuddy.asm.Advice.Return;

@Controller
public class homecontroller {

	@Autowired
	private UserInfoDao dao;

	@RequestMapping({ "/","/index" })
	public String home() {

		return "index";
	}

	@RequestMapping({ "/admin", "/adminHome" })
	public String admin(Model m, UserInfo b, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		String username = (String) session.getAttribute("uname");
		if (username == null) {
			return "adminLogin";
		}

		return "adminHome";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(@ModelAttribute("b") UserInfo b) {
		dao.add(b);
		return "index";
	}

	/* test page after instructon page,loads module1 test */
	@RequestMapping(value = "starttest")
	public String starttest(Model model, HttpServletRequest request, UserInfo b) {

		HttpSession session = request.getSession();
		UserInfo userInfo = (UserInfo) session.getAttribute("loggedInUser");
		if (userInfo == null) {
			return "index";
		}
		session.setAttribute("id", userInfo.getId());
		session.setAttribute("module1", userInfo.getModule1());
		session.setAttribute("module2", userInfo.getModule2());
		session.setAttribute("module3", userInfo.getModule3());
		List<QuestionBank> questionBanks = getmodulebystudent(userInfo);
		model.addAttribute("question", questionBanks);
		model.addAttribute("currentQuestion0", questionBanks.get(0));
		model.addAttribute("currentQuestion1", questionBanks.get(1));
		model.addAttribute("currentQuestion2", questionBanks.get(2));
		model.addAttribute("currentQuestion3", questionBanks.get(3));
		model.addAttribute("currentQuestion4", questionBanks.get(4));
		model.addAttribute("currentQuestion5", questionBanks.get(5));
		model.addAttribute("currentQuestion6", questionBanks.get(6));
		model.addAttribute("currentQuestion7", questionBanks.get(7));
		model.addAttribute("currentQuestion8", questionBanks.get(8));
		model.addAttribute("currentQuestion9", questionBanks.get(9));
		model.addAttribute("currentQuestion10", questionBanks.get(10));
		model.addAttribute("currentQuestion11", questionBanks.get(11));
		model.addAttribute("currentQuestion12", questionBanks.get(12));
		model.addAttribute("currentQuestion13", questionBanks.get(13));
		model.addAttribute("currentQuestion14", questionBanks.get(14));
		model.addAttribute("currentQuestion15", questionBanks.get(15));
		model.addAttribute("currentQuestion16", questionBanks.get(16));
		model.addAttribute("currentQuestion17", questionBanks.get(17));
		model.addAttribute("currentQuestion18", questionBanks.get(18));
		model.addAttribute("currentQuestion19", questionBanks.get(19));
		return "userTest1";
	}

	/* test page after instructon page.loads module2 test */
	@RequestMapping(value = "/test2")
	public String starttest2(Model model, HttpServletRequest request, UserInfo b) {

		HttpSession session = request.getSession();
		UserInfo userInfo = (UserInfo) session.getAttribute("loggedInUsers");
		if (userInfo == null) {
			return "index";
		}
		session.setAttribute("id", userInfo.getId());
		session.setAttribute("module1", userInfo.getModule1());
		session.setAttribute("module2", userInfo.getModule2());
		session.setAttribute("module3", userInfo.getModule3());
		session.setAttribute("module1_score", userInfo.getmodule1_score());
		List<QuestionBank> questionBanks = getmodulebystudent2(userInfo);
		model.addAttribute("question", questionBanks);
		model.addAttribute("currentQuestion0", questionBanks.get(0));
		model.addAttribute("currentQuestion1", questionBanks.get(1));
		model.addAttribute("currentQuestion2", questionBanks.get(2));
		model.addAttribute("currentQuestion3", questionBanks.get(3));
		model.addAttribute("currentQuestion4", questionBanks.get(4));
		model.addAttribute("currentQuestion5", questionBanks.get(5));
		model.addAttribute("currentQuestion6", questionBanks.get(6));
		model.addAttribute("currentQuestion7", questionBanks.get(7));
		model.addAttribute("currentQuestion8", questionBanks.get(8));
		model.addAttribute("currentQuestion9", questionBanks.get(9));
		model.addAttribute("currentQuestion10", questionBanks.get(10));
		model.addAttribute("currentQuestion11", questionBanks.get(11));
		model.addAttribute("currentQuestion12", questionBanks.get(12));
		model.addAttribute("currentQuestion13", questionBanks.get(13));
		model.addAttribute("currentQuestion14", questionBanks.get(14));

		model.addAttribute("currentQuestion15", questionBanks.get(15));
		model.addAttribute("currentQuestion16", questionBanks.get(16));
		model.addAttribute("currentQuestion17", questionBanks.get(17));
		model.addAttribute("currentQuestion18", questionBanks.get(18));
		model.addAttribute("currentQuestion19", questionBanks.get(19));
		return "UserTest2";
	}

	/* test page after instructon page,will load module3 test */
	@RequestMapping(value = "/test3")
	public String starttest3(Model model, HttpServletRequest request, UserInfo b) {
		HttpSession session = request.getSession();
		UserInfo userInfo = (UserInfo) session.getAttribute("loggedInUseres");
		if (userInfo == null) {
			return "index";
		}
		session.setAttribute("id", userInfo.getId());
		session.setAttribute("module1", userInfo.getModule1());
		session.setAttribute("module2", userInfo.getModule2());
		session.setAttribute("module3", userInfo.getModule3());
		session.setAttribute("module1_score", userInfo.getmodule1_score());
		session.setAttribute("module2_score", userInfo.getmodule2_score());
		List<QuestionBank> questionBanks = getmodulebystudent3(userInfo);
		model.addAttribute("question", questionBanks);
		model.addAttribute("currentQuestion0", questionBanks.get(0));
		model.addAttribute("currentQuestion1", questionBanks.get(1));
		model.addAttribute("currentQuestion2", questionBanks.get(2));
		model.addAttribute("currentQuestion3", questionBanks.get(3));
		model.addAttribute("currentQuestion4", questionBanks.get(4));

		model.addAttribute("currentQuestion5", questionBanks.get(5));
		model.addAttribute("currentQuestion6", questionBanks.get(6));
		model.addAttribute("currentQuestion7", questionBanks.get(7));
		model.addAttribute("currentQuestion8", questionBanks.get(8));
		model.addAttribute("currentQuestion9", questionBanks.get(9));
		model.addAttribute("currentQuestion10", questionBanks.get(10));
		model.addAttribute("currentQuestion11", questionBanks.get(11));
		model.addAttribute("currentQuestion12", questionBanks.get(12));
		model.addAttribute("currentQuestion13", questionBanks.get(13));
		model.addAttribute("currentQuestion14", questionBanks.get(14));

		model.addAttribute("currentQuestion15", questionBanks.get(15));
		model.addAttribute("currentQuestion16", questionBanks.get(16));
		model.addAttribute("currentQuestion17", questionBanks.get(17));
		model.addAttribute("currentQuestion18", questionBanks.get(18));
		model.addAttribute("currentQuestion19", questionBanks.get(19));
		return "UserTest3";
	}

	/*
	 * /for storing scores of all three modules total/
	 */
	@RequestMapping(value = "/testsubmits", method = RequestMethod.POST)
	public String submit(Model model, HttpServletRequest request, UserInfo a, HttpServletResponse response) {
		HttpSession session = request.getSession();

		UserInfo userInfo = (UserInfo) session.getAttribute("loggedInUseress");

		if (userInfo == null) {
			return "index";
		}
		session.setAttribute("id", userInfo.getId());
		boolean login = true;
		session.setAttribute("loginenabled", login);
		session.setAttribute("module1", userInfo.getModule1());
		session.setAttribute("module2", userInfo.getModule2());
		session.setAttribute("module3", userInfo.getModule3());
		session.setAttribute("module1_score", userInfo.getmodule1_score());
		session.setAttribute("module2_score", userInfo.getmodule2_score());
		session.setAttribute("module3_score", userInfo.getmodule3_score());
		Integer score1 = (Integer) session.getAttribute("module1_score");
		Integer score2 = (Integer) session.getAttribute("module2_score");
		Integer score3 = (Integer) session.getAttribute("module3_score");
		if (score1 == null && score2 == null && score3 == null) {
			score3 = 0;
			System.out.println("Condition 1" + score3);
		} else if (score1 == null && score2 == null) {
			score3 = score3;
			System.out.println("Condition 2" + score3);
		} else if (score1 == null && score3 == null) {
			score3 = score2;
			System.out.println("Condition 3" + score3);
		} else if (score2 == null && score3 == null) {
			score3 = score1;
			System.out.println("Condition 4" + score3);
		} else if (score1 == null && score2 != null && score3 != null) {
			score3 += score2;
		} else if (score2 == null && score1 != null && score3 != null) {
			score3 += score1;
		} else if (score3 == null && score1 != null && score2 != null) {
			score3 = score1 + score2;
		} else {
			score3 += score1 + score2;
		}
		String status = "";
		if (score3 >= 30) {
			status = "pass";
		} else {
			status = "fail";
		}
		session.setAttribute("scores", score3);
		session.setAttribute("status", status);
		session.invalidate();
		return "totalcount";
		
	}

	/* for loading the profile of candidate */
	@RequestMapping(value = "/profile")
	public String profile(Model model, HttpServletRequest request, UserInfo b) {
		HttpSession session = request.getSession();
		UserInfo userInfo = (UserInfo) session.getAttribute("loggedInUser");
		if (userInfo == null) {
			return "index";
		}
		session.setAttribute("fname", userInfo.getFname());
		session.setAttribute("lname", userInfo.getLname());
		session.setAttribute("emails", userInfo.getEmails());
		session.setAttribute("contact", userInfo.getContact());

		return "profile";
	}

	/* for logout */
	@RequestMapping(value = "/logout")
	public void logout(Model model, HttpServletRequest request, UserInfo b, HttpServletResponse response)
			throws Exception {
		HttpSession session = request.getSession();
		UserInfo userInfo = (UserInfo) session.getAttribute("loggedInUser");
		if (userInfo == null) {
			response.sendRedirect("index");
		}
		session.invalidate();
		response.sendRedirect("index");
	}

	/* User Scores */
	@RequestMapping("/score")
	public String scores(Model m, UserInfo b, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("uname");
		if (username == null) {
			return "adminLogin";
		}
		m.addAttribute("scores", dao.score(b));
		return "scores";
	}

	/* this will retrive the questions from module */
	public List<QuestionBank> getmodulebystudent(UserInfo userInfo) {
		String module1 = userInfo.getModule1();
		String module2 = userInfo.getModule2();
		String module3 = userInfo.getModule3();
		return dao.getmodules(module1, module2, module3);
	}

	public List<QuestionBank> getmodulebystudent2(UserInfo userInfo) {
		String module1 = userInfo.getModule1();
		String module2 = userInfo.getModule2();
		String module3 = userInfo.getModule3();
		return dao.getmodules2(module1, module2, module3);
	}

	public List<QuestionBank> getmodulebystudent3(UserInfo userInfo) {
		String module1 = userInfo.getModule1();
		String module2 = userInfo.getModule2();
		String module3 = userInfo.getModule3();
		return dao.getmodules3(module1, module2, module3);
	}

	@RequestMapping(value = { "login", "/login" }, method = RequestMethod.POST)
	public String username(HttpServletRequest request, HttpServletResponse response, UserInfo b, Model m)
			throws Exception {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		List<UserInfo> userInfo = dao.username(username, password);
		if (!userInfo.isEmpty()) {
			HttpSession session = request.getSession(true);
			session.setAttribute("loggedInUser", userInfo.get(0));
			m.addAttribute("userlogin", userInfo.get(0));
			return "userHome";
		}
		if (userInfo.isEmpty()) {
			return "errorPage";
		}
		return "errorPage";
	}
	/* When we click on module this will load to questions page */
	@RequestMapping(value = "/modules")
	public String modules(@ModelAttribute("c") QuestionBank c, HttpServletRequest request,
			HttpServletResponse response) {
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("uname");
		if (username == null) {
			return "adminLogin";
		}
		dao.question_add(c);
		return "modules";	
	}
	

	/* login success */
	@RequestMapping({ "/loginsucess", "loginsucess" })
	public String loginsucess(Model model, HttpServletRequest request, UserInfo b) {
		HttpSession session = request.getSession();
		UserInfo userInfo = (UserInfo) session.getAttribute("loggedInUser");
		if (userInfo == null) {
			return "index";
		}
		return "userHome";
	}

	/* admin front page */
	@RequestMapping("adminlogin")
	public String adminlogin() {
		return "adminLogin";
	}

	/* admin authentication */
	@RequestMapping(value = { "adminlog", "/adminLogin", "/adminlog", "/adminHome" }, method = RequestMethod.POST)
	public void auth(HttpServletRequest request, HttpServletResponse response, UserInfo b, Model m) throws Exception {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if (username.equals("admin") && password.equals("admin123")) {
			HttpSession session = request.getSession();
			session.setAttribute("uname", username);
			response.sendRedirect("adminHome");
		} else {
			response.sendRedirect("errorPage");
		}

	}

	/* All the registerted candidates */
	@RequestMapping({ "getall", "/getallcand" })
	public String getall(HttpServletRequest request, HttpServletResponse response, UserInfo b, Model m) {
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("uname");
		if (username == null) {
			return "adminLogin";
		}
		m.addAttribute("results", dao.get(b));
		return "allcandidates";
	}

	/* View Java Question */
	@RequestMapping({ "javaquestions", "/javaquestions", "/javaquestions" })
	public String javaquestion(Model m, QuestionBank c, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("uname");
		if (username == null) {
			return "adminLogin";
		}
		m.addAttribute("results", dao.java(c));
		return "javaquestions";
	}

	/* View c++ questions */
	@RequestMapping({ "c++questions", "/c++questions" })
	public String cquestion(Model m, QuestionBank c, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("uname");
		if (username == null) {
			return "adminLogin";
		}
		m.addAttribute("results", dao.c(c));
		return "c++questions";
	}

	/* View python questions */
	@RequestMapping({ "pythonquestions", "/pythonquestions" })
	public String pythonquestion(Model m, QuestionBank c, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("uname");
		if (username == null) {
			return "adminLogin";
		}
		m.addAttribute("results", dao.python(c));
		return "pythonquestions";
	}

	/* View Dotnet questions */
	@RequestMapping({ "dotnetquestions", "/dotnetquestions" })
	public String dotnetquestion(Model m, QuestionBank c, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("uname");
		if (username == null) {
			return "adminLogin";
		}
		m.addAttribute("results", dao.DotNet(c));
		return "dotnetquestions";
	}

	/* View mulesoft questions */
	@RequestMapping({ "mulesoftquestions", "/mulesoftquestions" })
	public String mulequestion(Model m, QuestionBank c, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("uname");
		if (username == null) {
			return "adminLogin";
		}
		m.addAttribute("results", dao.MuleSoft(c));
		return "mulesoftquestions";
	}

	/* View aptitude questions */
	@RequestMapping({ "aptiquestions", "/aptitudequestions", "/aptitudequestions" })
	public String aptiquestion(Model m, QuestionBank c, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("uname");
		if (username == null) {
			return "adminLogin";
		}
		m.addAttribute("results", dao.aptitude(c));
		return "aptitudequestions";
	}

	/* View vocal questions */
	@RequestMapping({ "vocalquestions", "/vocalquestions", "/vocalquestions" })
	public String vocalquestion(Model m, QuestionBank c, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("uname");
		if (username == null) {
			return "adminLogin";
		}
		m.addAttribute("results", dao.vocal(c));
		return "vocalquestons";
	}

	/* View testing questions */
	@RequestMapping({ "testingquestions", "/testingquestions", "/testingquestions" })
	public String testingquestion(Model m, QuestionBank c, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("uname");
		if (username == null) {
			return "adminLogin";
		}
		m.addAttribute("results", dao.testing(c));
		return "testingquestions";
	}

	@RequestMapping({ "pendingcand", "/pendingcand" })
	public String pending(Model m, UserInfo b, HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("uname");
		if (username == null) {
			return "adminLogin";
		}
		m.addAttribute("results", dao.pend(b));
		return "allcandidates";
	}

	/* Candidates whose test has been enabled */
	@RequestMapping({ "activecand", "/loginactive" })
	public String testact(Model m, UserInfo b, HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("uname");
		if (username == null) {
			return "adminLogin";
		}
		m.addAttribute("results", dao.active(b));
		return "loginactive";
	}

	/* Registration page landing */
	@RequestMapping("/register")
	public String register() {
		return "register";
	}

	/* Candidates who have not started test yet */
	@RequestMapping({ "unactivecand", "/loginunactive" })
	public String testunact(Model m, UserInfo b, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("uname");
		if (username == null) {
			return "adminLogin";
		}
		m.addAttribute("results", dao.unactive(b));
		return "loginunactive";
	}

	/* /admin logout/ */
	@RequestMapping("adminlogout")
	public void adminlog(Model m, UserInfo b, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("uname");
		if (username == null) {
			response.sendRedirect("adminLogin");
		}
		session.invalidate();
		response.sendRedirect("admin");
	}

	/* /admin profile/ */
	@RequestMapping("profiles")
	public String profiles(Model m, UserInfo b, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("uname");
		if (username == null) {
			response.sendRedirect("adminLogin");
		}
		return "adminprofile";
	}
}