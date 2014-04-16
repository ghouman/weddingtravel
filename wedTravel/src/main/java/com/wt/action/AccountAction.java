package com.wt.action;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Component;

import com.wt.model.Account;
import com.wt.service.AccountService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
@Component
public class AccountAction extends ActionSupport {

    @Resource
    private AccountService accountService;
    private List<Account> list;

    private HttpServletResponse response;
    private String removeNumbers;
    private Account account;
    private String level;

    @Override
    public String execute() throws Exception {
        // TODO Auto-generated method stub
        response = ServletActionContext.getResponse();

        list = accountService.getAllAccount();

        String jsonStr = "";
        for (Account account2 : list) {

            JSONObject jo = JSONObject.fromObject(account2);
            jsonStr += "," + jo.toString();

        }
        jsonStr = jsonStr.substring(1, jsonStr.length());
        try {
            // ���سɹ���ʶ  
            response.getWriter().println(jsonStr);
            response.getWriter().flush();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                response.getWriter().close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        return null;

    }


    public String addUser() throws Exception {

        response = ServletActionContext.getResponse();
        account.setEnabled(1);
        accountService.insertAccount(account);

        try {
            // ���سɹ���ʶ  
            response.getWriter().println("{success:true,userID:" + account.getId() + "}");
            response.getWriter().flush();
            System.out.println("haha");
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                response.getWriter().close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        return null;

    }


    public String removes() {
        System.out.println(removeNumbers);
        response = ServletActionContext.getResponse();

        int count = accountService.remove(removeNumbers);

        try {
            // ���سɹ���ʶ  
            response.getWriter().println(count);
            response.getWriter().flush();
            System.out.println("haha");
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                response.getWriter().close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        return null;
    }


    public HttpServletResponse getResponse() {
        return response;
    }

    public void setResponse(HttpServletResponse response) {
        this.response = response;
    }

    public AccountService getAccountService() {
        return accountService;
    }

    public void setAccountService(AccountService accountService) {
        this.accountService = accountService;
    }

    public List<Account> getList() {
        return list;
    }

    public void setList(List<Account> list) {
        this.list = list;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public String getRemoveNumbers() {
        return removeNumbers;
    }

    public void setRemoveNumbers(String removeNumbers) {
        this.removeNumbers = removeNumbers;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

}
