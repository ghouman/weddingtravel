package com.wt.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.wt.model.Account;
@Repository
public class AccountDao {
	
	@Resource
	private SqlSessionFactory sessionFactory;

	public SqlSessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SqlSessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public int insert(Account account) {

		SqlSession session = sessionFactory.openSession();
		return session.insert("account.add", account);
	}
	public void remove(Account account) {

		SqlSession session = sessionFactory.openSession();
		 session.delete("account.remove", account);
	}
	public Account getAccountById(Account account) {

		SqlSession session = sessionFactory.openSession();
		Account accountFromDb = (Account) session.selectOne("account.get",
				account);
		return accountFromDb;
	}
	@SuppressWarnings("unchecked")
	public List<Account> getAllAccount(){
		SqlSession session = sessionFactory.openSession();
		List<Account> accountFromDb = (List<Account>) session.selectList("account.getAllAccount");
		return accountFromDb;
		
	}

}
