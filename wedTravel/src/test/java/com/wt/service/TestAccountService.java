package com.wt.service;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.wt.model.Account;

public class TestAccountService {

	Logger logger = Logger.getLogger("TestAccountService");

	AccountService service = null;

	@Before
	public void init() {

		ApplicationContext aCtx = new FileSystemXmlApplicationContext(
				"classpath:applicationContext.xml");
		AccountService service = (AccountService) aCtx
				.getBean("accountService");
		assertNotNull(service);
		this.service = service;

	}
	@Test
	public void remove() {

		Account account = new Account();
		account.setUsername("selina");
		account.setPassword("123456");

		service.remove("22|21|24|26|25");
		// logger.debug("account id: " + account.getAccountId());

		 //Account accountFromDb = service.getAccountById(account);
		// assertNotNull(accountFromDb);
		// assertEquals(account.getAccountId(), accountFromDb.getAccountId());
	}
	@Test
	public void testInsertAccount() {

		Account account = new Account();
		 //account.setAccountId(2);
		account.setUsername("admin");
		account.setPassword("admin");

		service.insertAccount(account);

	}
	@Test
	public void getAll() {

		Account account = new Account();
		 //account.setAccountId(2);
		account.setUsername("selina");
		account.setPassword("123456");

		List<Account> list = service.getAllAccount();
		String jsonStr="";
		for (Account account2 : list) {
			try {
				JSONObject jo = JSONObject.fromObject(account2);
				//System.out.println(jo);
				jsonStr+=","+ jo.toString();  
				//jsonStr;
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}  
			
		}
		jsonStr = jsonStr.substring(1,jsonStr.length());

		System.out.println(jsonStr);
		// logger.debug("account id: " + account.getAccountId());

		 //Account accountFromDb = service.getAccountById(account);
		// assertNotNull(accountFromDb);
		// assertEquals(account.getAccountId(), accountFromDb.getAccountId());
	}
}