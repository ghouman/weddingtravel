package com.wt.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.wt.dao.AccountDao;
import com.wt.model.Account;
@Repository
public class AccountService {
	@Resource
	private AccountDao  accountDao;

	
	
	public int insertAccount(Account account) {
	  
		return accountDao.insert(account);
		
	}
	 
	public int remove(String removeNumbers) {
		String arrs[] = removeNumbers.split("\\|");
		for (String string : arrs) {
			System.out.println(string);
			Account account = new Account();
			account.setId(Integer.parseInt(string));
			accountDao.remove(account);
		}
		 
		 return arrs.length;
		 
	}
	 
	
	public Account getAccountById(Account account) {
	  
		return accountDao.getAccountById(account);
	}
	public List<Account> getAllAccount() {
		  
		return accountDao.getAllAccount();
	}
	public AccountDao getAccountDao() {
		return accountDao;
	}

	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}
	
}
