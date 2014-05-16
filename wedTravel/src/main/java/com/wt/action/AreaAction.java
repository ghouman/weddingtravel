package com.wt.action;

import com.opensymphony.xwork2.ActionSupport;
import com.wt.bean.table.*;
import com.wt.service.AreaService;
import com.wt.service.FrontMenuService;
import com.wt.service.RecommendService;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.List;

@SuppressWarnings("serial")
@Component
public class AreaAction extends ActionSupport {

    @Resource
    @Autowired
    private AreaService areaService;
    @Autowired
    private FrontMenuService frontMenuService;
    @Autowired
    private RecommendService recommendService;

    private HttpServletResponse response;
    private HttpServletRequest request;

    @Override
    public String execute() throws Exception {
        response = ServletActionContext.getResponse();
        request = ServletActionContext.getRequest();
        
        String str = request.getParameter("packageType")==null?"":request.getParameter("packageType").toString();//套餐类型
        List<AreaBean> areaList = areaService.getAreaListByAll();  //地区集合
        List<IslandBean> islandList = areaService.getIslandListByAll();//岛屿集合
        List<IslandPackageBean> islandPackageList = areaService.getIslandPackageListByPackageType(Integer.parseInt(str));//套餐集合

        List<FrontMenu> listMenu = frontMenuService.getFrontMenuByModuleId(1);//主菜单
        List<Recommend> listRecommend1 = recommendService.getRecomendListByModuleId(1);  //首页主推产品
        request.setAttribute("listMenu",listMenu);
        request.setAttribute("areaList",areaList);
        request.setAttribute("islandList",islandList);
        request.setAttribute("islandPackageList",islandPackageList);
        request.setAttribute("listRecommend1",listRecommend1);
        return SUCCESS;

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

}
