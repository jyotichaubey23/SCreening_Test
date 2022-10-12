package com.screen.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.screen.model.UserInfo;

@Component
public class EmpDao {
	JdbcTemplate template;

	@Autowired
	SessionFactory sessionfactory;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	/* login enable 1 */
	public List<UserInfo> getEmployeesByPage(int pageid, int total) {
		String sql = "select * from user_info where login_enabled=" + 1 + " order by id desc limit " + (pageid - 1)
				+ "," + total;

		return template.query(sql, new RowMapper<UserInfo>() {
			public UserInfo mapRow(ResultSet rs, int row) throws SQLException {
				UserInfo e = new UserInfo();
				e.setId(rs.getInt(1));
				e.setFname(rs.getString(2));
				e.setLname(rs.getString(3));
				e.setDob(rs.getString(4));
				e.setPer10(rs.getString(5));
				e.setPer12(rs.getString(6));
				e.setCourse(rs.getString(7));
				e.setCourseper(rs.getString(8));
				e.setCollege(rs.getString(9));
				e.setEmails(rs.getString(10));
				e.setContact(rs.getString(11));
				e.setLoginenabled(rs.getBoolean(12));
				e.setTeststatus(rs.getBoolean(13));
				e.setUsername(rs.getString(14));
				e.setPassword(rs.getString(15));
				e.setPassing_year(rs.getString(16));
				e.setGender(rs.getString(17));
				e.setRole(rs.getString(18));
				return e;
			}
		});
	}

	/* login enable 0 */
	public List<UserInfo> notlogin(int pageid, int total) {
		String sql = "select * from user_info where login_enabled=" + 0 + " order by id desc limit " + (pageid - 1)
				+ "," + total;

		return template.query(sql, new RowMapper<UserInfo>() {
			public UserInfo mapRow(ResultSet rs, int row) throws SQLException {
				UserInfo e = new UserInfo();
				e.setId(rs.getInt(1));
				e.setFname(rs.getString(2));
				e.setLname(rs.getString(3));
				e.setDob(rs.getString(4));
				e.setPer10(rs.getString(5));
				e.setPer12(rs.getString(6));
				e.setCourse(rs.getString(7));
				e.setCourseper(rs.getString(8));
				e.setCollege(rs.getString(9));
				e.setEmails(rs.getString(10));
				e.setContact(rs.getString(11));
				e.setLoginenabled(rs.getBoolean(12));
				e.setTeststatus(rs.getBoolean(13));
				e.setUsername(rs.getString(14));
				e.setPassword(rs.getString(15));
				e.setPassing_year(rs.getString(16));
				e.setGender(rs.getString(17));
				e.setRole(rs.getString(18));

				return e;
			}
		});
	}

	/* test status 1 */
	public List<UserInfo> statusact(int pageid, int total) {
		String sql = "select * from user_info where test_status=" + 1 + " limit " + (pageid - 1) + "," + total;

		return template.query(sql, new RowMapper<UserInfo>() {
			public UserInfo mapRow(ResultSet rs, int row) throws SQLException {
				UserInfo e = new UserInfo();
				e.setId(rs.getInt(1));
				e.setFname(rs.getString(2));
				e.setLname(rs.getString(3));
				e.setDob(rs.getString(4));
				e.setPer10(rs.getString(5));
				e.setPer12(rs.getString(6));
				e.setCourse(rs.getString(7));
				e.setCourseper(rs.getString(8));
				e.setCollege(rs.getString(9));
				e.setEmails(rs.getString(10));
				e.setContact(rs.getString(11));
				e.setLoginenabled(rs.getBoolean(12));
				e.setTeststatus(rs.getBoolean(13));
				e.setUsername(rs.getString(14));
				e.setPassword(rs.getString(15));
				e.setPassing_year(rs.getString(16));
				e.setGender(rs.getString(17));
				e.setRole(rs.getString(18));

				return e;
			}
		});
	}

	/* test status 0 */
	public List<UserInfo> testunact(int pageid, int total) {
		String sql = "select * from user_info where test_status=" + 0 + " order by id desc limit " + (pageid - 1) + ","
				+ total;

		return template.query(sql, new RowMapper<UserInfo>() {
			public UserInfo mapRow(ResultSet rs, int row) throws SQLException {
				UserInfo e = new UserInfo();
				e.setId(rs.getInt(1));
				e.setFname(rs.getString(2));
				e.setLname(rs.getString(3));
				e.setDob(rs.getString(4));
				e.setPer10(rs.getString(5));
				e.setPer12(rs.getString(6));
				e.setCourse(rs.getString(7));
				e.setCourseper(rs.getString(8));
				e.setCollege(rs.getString(9));
				e.setEmails(rs.getString(10));
				e.setContact(rs.getString(11));
				e.setLoginenabled(rs.getBoolean(12));
				e.setTeststatus(rs.getBoolean(13));
				e.setUsername(rs.getString(14));
				e.setPassword(rs.getString(15));
				e.setPassing_year(rs.getString(16));
				e.setGender(rs.getString(17));
				e.setRole(rs.getString(18));

				return e;
			}
		});
	}

	/* update inactive candidates */
	@Transactional
	public void update(UserInfo b) {
		Session session = sessionfactory.getCurrentSession();
		session.update(b);
	}

	@Transactional
	public void saveresponse(UserInfo a, HttpServletRequest request, HttpServletResponse response) {
		Session session = sessionfactory.getCurrentSession();
		session.update(a);
		HttpSession sessions = request.getSession(true);
		sessions.setAttribute("loggedInUsers", a);
	}

	@Transactional
	public void saveresponse2(UserInfo a, HttpServletRequest request, HttpServletResponse response) {
		Session session = sessionfactory.getCurrentSession();
		session.update(a);
		HttpSession sessions = request.getSession(true);
		sessions.setAttribute("loggedInUseres", a);
	}

	@Transactional
	public void saveresponse3(UserInfo a, HttpServletRequest request, HttpServletResponse response) {
		Session session = sessionfactory.getCurrentSession();
		session.update(a);
		HttpSession sessions = request.getSession(true);
		sessions.setAttribute("loggedInUseress", a);
	}

	@Transactional
	public void responses(UserInfo a, HttpServletRequest request, HttpServletResponse response) {
		Session session = sessionfactory.getCurrentSession();
		session.update(a);
	}

	@Transactional
	public List<Integer> pages_candidate(UserInfo b, int pageid, int total) {
		Session session = sessionfactory.getCurrentSession();
		String sql = "select count(*) from UserInfo where login_enabled=1";
		List<Integer> res = session.createQuery(sql).list();
		return res;
	}

	@Transactional
	public List<Integer> pages_pending_candidate(UserInfo b, int pageid, int total) {
		Session session = sessionfactory.getCurrentSession();
		String sql = "select count(*) from UserInfo where login_enabled=0";
		List<Integer> res = session.createQuery(sql).list();
		return res;
	}

	@Transactional
	public List<Integer> pages_active_candidate(UserInfo b, int pageid, int total) {
		Session session = sessionfactory.getCurrentSession();
		String sql = "select count(*) from UserInfo where test_status=0";
		List<Integer> res = session.createQuery(sql).list();
		return res;
	}
	@Transactional
	public List<Integer> pages_inactive_candidate(UserInfo b, int pageid, int total) {
		Session session = sessionfactory.getCurrentSession();
		String sql = "select count(*) from UserInfo where test_status=1";
		List<Integer> res = session.createQuery(sql).list();
		return res;
	}
}