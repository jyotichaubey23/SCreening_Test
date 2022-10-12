package com.screen.dao;

import java.util.List;
import java.util.Random;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.screen.model.QuestionBank;
import com.screen.model.UserInfo;

@Component
public class UserInfoDao {

	@Autowired
	private SessionFactory sessionfactory;

	@Transactional
	public boolean validate(String username, String password, UserInfo b) {
		Session session = sessionfactory.getCurrentSession();
		List<UserInfo> user = session.createQuery("select username from UserInfo where username!=null").list();
		List<UserInfo> pass = session.createQuery("select password from UserInfo where password!=null").list();
		if (user.equals(username) && pass.equals(password)) {
			return true;
		} else
			return false;
	}
	/* /update records/ */
	@Transactional
	public void updatePerson(UserInfo p) {
		Session session = sessionfactory.getCurrentSession();
		session.update(p);
	}

	/* /delete records/ */
	@Transactional
	public void removePerson(int id) {
		Session session = sessionfactory.getCurrentSession();
		UserInfo p = (UserInfo) session.load(UserInfo.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
	}

	@Transactional
	public List<UserInfo> username(String username, String password) {
		Session session = sessionfactory.getCurrentSession();
		Criteria criteria = session.createCriteria(UserInfo.class);
		((Criteria) criteria).add(Restrictions.eq("username", username));
		((Criteria) criteria).add(Restrictions.eq("password", password));
		((Criteria) criteria).add(Restrictions.eq("loginenabled", false));
		((Criteria) criteria).add(Restrictions.isNotNull("module1"));
		((Criteria) criteria).add(Restrictions.isNotNull("module2"));
		((Criteria) criteria).add(Restrictions.isNotNull("module3"));
		List list = ((Criteria) criteria).list();
		return list;

	}

	/* /admin home login/ */
	@Transactional
	public String auths(String username, String password, UserInfo b) {
		Session session = sessionfactory.getCurrentSession();
		String a = "";
		Criteria criteria = session.createCriteria(UserInfo.class);
		criteria.add(Restrictions.eq("username", username));
		List list = criteria.list();
		if (list.isEmpty()) {
			a = "false";
			list = null;
		} else {
			a = "true";
		}
		return a;
	}

	/* /will retrieve first 10 questions from db/ */
	@Transactional
	public List<QuestionBank> getmodules(String module1, String module2, String module3) {

		Session session = sessionfactory.getCurrentSession();
		Criteria criteria = session.createCriteria(QuestionBank.class);
		((Criteria) criteria).add(Restrictions.eq("subject", module1));
		criteria.setFetchSize(20);
		criteria.setMaxResults(20);
		List list = ((Criteria) criteria).list();
		return list;

	}

	@Transactional
	public List<QuestionBank> getmodules2(String module1, String module2, String module3) {

		Session sessions = sessionfactory.getCurrentSession();
		Criteria criteria = sessions.createCriteria(QuestionBank.class);
		((Criteria) criteria).add(Restrictions.in("subject", module2));
		criteria.setFetchSize(20);
		List list = ((Criteria) criteria).list();
		return list;

	}

	@Transactional
	public List<QuestionBank> getmodules3(String module1, String module2, String module3) {

		Session session = sessionfactory.getCurrentSession();
		Criteria criteria = session.createCriteria(QuestionBank.class);
		((Criteria) criteria).add(Restrictions.eq("subject", module3));
		criteria.setFetchSize(20);
		criteria.setMaxResults(20);
		List list = ((Criteria) criteria).list();
		return list;

	}

	@Transactional
	public List<UserInfo> password(UserInfo b) {
		Session session = sessionfactory.getCurrentSession();
		List<UserInfo> res = session.createQuery(" select password from UserInfo where password!='null'").list();
		return res;
	}

	/* View Java Questions */
	@Transactional
	public List<QuestionBank> java(QuestionBank c) {
		Session session = sessionfactory.getCurrentSession();
		List<QuestionBank> res = session.createQuery("from QuestionBank where subject_name='Java'").list();
		return res;
	}

	/* View MuleSoft Questions */
	@Transactional
	public List<QuestionBank> MuleSoft(QuestionBank c) {
		Session session = sessionfactory.getCurrentSession();
		List<QuestionBank> res = session.createQuery("from QuestionBank where subject_name='Mulesoft'").list();
		return res;
	}

	/* View DotNet Questions */
	@Transactional
	public List<QuestionBank> DotNet(QuestionBank c) {
		Session session = sessionfactory.getCurrentSession();
		Criteria criteria = session.createCriteria(QuestionBank.class);
		((Criteria) criteria).add(Restrictions.in("subject", "DotNet"));
		List list = ((Criteria) criteria).list();
		return list;

	}

	/* View testing questions */
	@Transactional
	public List<QuestionBank> testing(QuestionBank c) {
		Session session = sessionfactory.getCurrentSession();
		List<QuestionBank> res = session.createQuery("from QuestionBank where subject_name='testing'").list();
		return res;
	}

	/* View c++ questions */
	@Transactional
	public List<QuestionBank> c(QuestionBank c) {
		Session session = sessionfactory.getCurrentSession();
		List<QuestionBank> res = session.createQuery("from QuestionBank where subject_name='C++'").list();
		return res;
	}

	/* View vocal questions */
	@Transactional
	public List<QuestionBank> vocal(QuestionBank c) {
		Session session = sessionfactory.getCurrentSession();
		List<QuestionBank> res = session.createQuery("from QuestionBank where subject_name='vocal'").list();
		return res;
	}

	/* view python questions */
	@Transactional
	public List<QuestionBank> python(QuestionBank c) {
		Session session = sessionfactory.getCurrentSession();
		List<QuestionBank> res = session.createQuery("from QuestionBank where subject_name='Python'").list();
		return res;
	}

	/* View aptitude questions */
	@Transactional
	public List<QuestionBank> aptitude(QuestionBank c) throws ClassCastException {
		Session session = sessionfactory.getCurrentSession();
		List<QuestionBank> res = session.createQuery("from QuestionBank where subject='Aptitude'").list();
		return res;
	}

	@Transactional
	public List<UserInfo> get(UserInfo b) {

		Session session = sessionfactory.getCurrentSession();
		List<UserInfo> res = session.createQuery("from UserInfo").list();
		return res;
	}

	@Transactional
	public List<UserInfo> pend(UserInfo b) {
		Session session = sessionfactory.getCurrentSession();
		List<UserInfo> res = session.createQuery("from UserInfo where teststatus=0").list();
		return res;
	}

	@Transactional
	public List<UserInfo> active(UserInfo b) {
		Session session = sessionfactory.getCurrentSession();
		List<UserInfo> res = session.createQuery("from UserInfo where teststatus=1").list();
		return res;
	}

	@Transactional
	public List<UserInfo> unactive(UserInfo b) {
		Session session = sessionfactory.getCurrentSession();
		List<UserInfo> res = session.createQuery("from UserInfo where teststatus=0").list();
		int size = res.size();
		return res;
	}

	/* Registration page details saved to db */
	@Transactional
	public void add(UserInfo b) {
		Random rand = new Random();
		int rand_no = rand.nextInt(1000);
		b.setUsername(b.getEmails());
		b.setPassword(b.getFname() + rand_no);
		b.setLoginenabled(false);
		b.setTeststatus(false);
		b.setModule1("Aptitude");
		b.setModule2("Aptitude");
		b.setModule3("Aptitude");
		Session session = sessionfactory.getCurrentSession();
		session.save(b);
	}

	@Transactional
	public void question_add(QuestionBank c) {
		Session session = sessionfactory.getCurrentSession();
		session.save(c);
	}

	@Transactional
	public List<UserInfo> score(UserInfo b) {
		Session session = sessionfactory.getCurrentSession();
		List<UserInfo> res = session.createQuery("from UserInfo where fname!='null'").list();
		return res;
	}
}