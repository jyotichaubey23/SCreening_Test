package com.screen.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.screen.dao.EmpDao;
import com.screen.dao.UserInfoDao;
import com.screen.model.UserInfo;

@Controller
public class EmpController {

	@Autowired
	EmpDao dao;

	@Autowired
	UserInfoDao daos;

	@Autowired
	private SessionFactory sessionfactory;

	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

	/* login active candidates */
	@RequestMapping(value = "/viewemp/{pageid}")
	public String edit(@PathVariable int pageid, Model m, UserInfo b, HttpServletRequest request,
			HttpServletResponse response) {
		HttpSession session = request.getSession();

		String username = (String) session.getAttribute("uname");
		if (username == null) {
			return "adminLogin";
		}
		int total = 5;
		if (pageid == 1) {
			pageid=1;
		} else {
			pageid = (pageid - 1) * total + 1;
		}
		List<UserInfo> list = dao.getEmployeesByPage(pageid, total);
		List<Integer> count = dao.pages_candidate(b, pageid, total);
		m.addAttribute("msg", list);
		m.addAttribute("count", count);
		return "loginactive";
	}

	/* edit records */
	@Transactional
	@RequestMapping(value = "/inact/edit/{id}")
	public String editform(HttpServletResponse res, @PathVariable int id, Model m, UserInfo b,
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession sessions = request.getSession();

		String username = (String) sessions.getAttribute("uname");
		if (username == null) {
			return "adminLogin";
		}

		Session session = sessionfactory.getCurrentSession();
		Query query2 = session.createQuery("from UserInfo where id = :id");
		query2.setParameter("id", id);

		UserInfo std_object = (UserInfo) query2.getSingleResult();
		m.addAttribute("student", std_object);
		return "userEdit";
	}

	@RequestMapping(value = "/inact/edit/updatedetails", method = RequestMethod.POST)
	public String updateinactive(@ModelAttribute("b") UserInfo b, HttpServletRequest request,
			HttpServletResponse response) throws ParseException {

		HttpSession session = request.getSession();

		String username = (String) session.getAttribute("uname");
		if (username == null) {
			return "adminLogin";
		}

		dao.update(b);
		return "loginunactive";
	}

	/* login inactive candidates */
	@RequestMapping(value = "/inact/{pageid}")
	public String inactive(@PathVariable int pageid, Model m, UserInfo b, HttpServletRequest request,
			HttpServletResponse response) {

		HttpSession session = request.getSession();

		String username = (String) session.getAttribute("uname");
		if (username == null) {
			return "adminLogin";
		}

		int total = 5;
		if (pageid == 1) {
		} else {
			pageid = (pageid - 1) * total + 1;
		}
		List<UserInfo> list = dao.notlogin(pageid, total);
		List<Integer> count = dao.pages_pending_candidate(b, pageid, total);
		m.addAttribute("msg", list);
		m.addAttribute("count", count);
		return "loginunactive";
	}

	/* test enabled 0 */
	@RequestMapping(value = "/unable/{pageid}")
	public String testunable(@PathVariable int pageid, Model m, UserInfo b, HttpServletRequest request,
			HttpServletResponse response) {

		HttpSession session = request.getSession();

		String username = (String) session.getAttribute("uname");
		if (username == null) {
			return "adminLogin";
		}

		int total = 5;
		if (pageid == 1) {
		} else {
			pageid = (pageid - 1) * total + 1;
		}
		List<UserInfo> list = dao.testunact(pageid, total);
		List<Integer> count = dao.pages_active_candidate(b, pageid, total);
		m.addAttribute("msg", list);
		m.addAttribute("count", count);
		return "testunable";
	}

	/* test enabled 1 */
	@RequestMapping(value = "/enable/{pageid}")
	public String testenable(@PathVariable int pageid, Model m, UserInfo b, HttpServletRequest request,
			HttpServletResponse response) {

		HttpSession session = request.getSession();

		String username = (String) session.getAttribute("uname");
		if (username == null) {
			return "adminLogin";
		}
		int total = 5;
		if (pageid == 1) {
		} else {
			pageid = (pageid - 1) * total + 1;
		}
		List<UserInfo> list = dao.statusact(pageid, total);
		List<Integer> count = dao.pages_inactive_candidate(b, pageid, total);
		m.addAttribute("msg", list);
		m.addAttribute("count", count);
		return "testactive";
	}

	/* this will save the module1 scores of user */
	@RequestMapping(value = "/testgiven1")
	public String response(Model m, UserInfo a, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		UserInfo userInfo = (UserInfo) session.getAttribute("loggedInUser");
		dao.saveresponse(a, request, response);
		session.setMaxInactiveInterval(180);
		return "TestModules";
	}

	/* this will save the module2 scores of user */
	@RequestMapping(value = "/testgiven2")
	public String response2(Model m, UserInfo a, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		UserInfo userInfo = (UserInfo) session.getAttribute("loggedInUsers");
		dao.saveresponse2(a, request, response);
		session.setMaxInactiveInterval(180);
		return "TestModules";
	}

	/* this will save the module3 scores of user */
	@RequestMapping(value = "/testsubmit")
	public String responses(Model m, UserInfo a, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		UserInfo userInfo = (UserInfo) session.getAttribute("loggedInUseress");
		dao.responses(a, request, response);
		return "profile";
	}

	/* this will save the module3 scores of user */
	@RequestMapping(value = "/testgiven3")
	public String response3(Model m, UserInfo a, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		UserInfo userInfo = (UserInfo) session.getAttribute("loggedInUseres");
		dao.saveresponse3(a, request, response);
		session.setMaxInactiveInterval(180);
		return "TestModules";
	}
}