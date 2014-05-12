package com.wt.action;

import com.opensymphony.xwork2.ActionSupport;
import com.wt.bean.table.FrontMenu;
import com.wt.bean.table.Recommend;
import com.wt.service.FrontMenuService;
import com.wt.service.RecommendService;
import net.sf.json.JSONArray;
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

    @Autowired
    private RecommendService recommendService;
    @Autowired
    private FrontMenuService frontMenuService;

    private HttpServletResponse response;
    private HttpServletRequest request;
    private Recommend recommend;

    @Override
    public String execute() throws Exception {
        response = ServletActionContext.getResponse();
        request = ServletActionContext.getRequest();
        List<Recommend> list1 = recommendService.getRecomendListByModuleId(1);  //首页主推产品
        List<Recommend> list2 = recommendService.getRecomendListByModuleId(2) ;  //首页最受欢迎岛屿

        List<Recommend> list4 = recommendService.getRecomendListByModuleId(4) ;   //首页套餐推荐

        List<FrontMenu> listMenu = frontMenuService.getFrontMenuByModuleId(1);//主菜单
        request.setAttribute("list1",list1);
        request.setAttribute("list2",list2);
        request.setAttribute("list4",list4);
        request.setAttribute("listMenu",listMenu);
        return SUCCESS;
    }

    public String ajaxGet() throws Exception {
           response = ServletActionContext.getResponse();
           List<Recommend> list3 = recommendService.getRecomendListByModuleId(3) ;   //首页咨询内容
           String jsonStr = "";
           /*for (Recommend recommend : list3) {
               JSONObject jo = JSONObject.fromObject(recommend);
               jsonStr += "," + jo.toString();
           }
           jsonStr = jsonStr.substring(1, jsonStr.length());*/
            // list转JSONArray
           JSONArray jsArr = JSONArray.fromObject(list3);
           jsonStr =  jsArr.toString();
           try {
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
           return "success";
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
