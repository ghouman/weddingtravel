package com.wt.action;

import com.opensymphony.xwork2.ActionSupport;
import com.wt.bean.table.AreaBean;
import com.wt.bean.table.IslandBean;
import com.wt.bean.table.IslandPackageBean;
import com.wt.service.AreaService;
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
        request.setAttribute("areaList",areaList);
        request.setAttribute("islandList",islandList);
        request.setAttribute("islandPackageList",islandPackageList);
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
