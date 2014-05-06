package com.wt.action;

import com.opensymphony.xwork2.ActionSupport;
import com.wt.model.Account;
import com.wt.model.Recommend;
import com.wt.service.AccountService;
import com.wt.service.RecommendService;
import net.sf.json.JSONObject;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@SuppressWarnings("serial")
@Component
public class RecommendAction extends ActionSupport {

    @Resource
    @Autowired
    private RecommendService recommendService;
    private List<Recommend> list;

    private HttpServletResponse response;
    private HttpServletRequest request;
    private Recommend recommend;

    @Override
    public String execute() throws Exception {
        response = ServletActionContext.getResponse();
        request = ServletActionContext.getRequest();

        list = recommendService.getRecomendList(1);
        List<Recommend> list2 = recommendService.getRecomendList(2) ;
        request.setAttribute("list",list);
        request.setAttribute("list2",list2);
        return SUCCESS;

    }

    public List<Recommend> getList() {
        return list;
    }

    public void setList(List<Recommend> list) {
        this.list = list;
    }

    public Recommend getRecommend() {
        return recommend;
    }

    public void setRecommend(Recommend recommend) {
        this.recommend = recommend;
    }

    public HttpServletResponse getResponse() {
        return response;
    }

    public void setResponse(HttpServletResponse response) {
        this.response = response;
    }

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

    public RecommendService getRecommendService() {
        return recommendService;
    }

    public void setRecommendService(RecommendService recommendService) {
        this.recommendService = recommendService;
    }
}
