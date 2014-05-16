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
    private RecommendService recommendService;

    private HttpServletResponse response;
    private HttpServletRequest request;

    @Override
    public String execute() throws Exception {
        response = ServletActionContext.getResponse();
        request = ServletActionContext.getRequest();


        /*
        int pageNum=1;
        int pageSize = 10;
        String strpageNum = request.getParameter("pageNum");
        if(strpageNum !=null && strpageNum !=""){
            pageNum = Integer.parseInt(strpageNum);
        }
        int start = (pageNum-1)*pageSize;
        String sql = "select * from table where 1=1 limit "+start+","+pageSize;
        int allcountpage=25;
        int temp = (int)Math.ceil(allcountpage/pageSize);
        request.setAttribute("allcountpage",Math.ceil(allcountpage/pageSize));
        */


        String str = request.getParameter("packageType")==null?"":request.getParameter("packageType").toString();//套餐类型
        List<AreaBean> areaList = areaService.getAreaListByAll();  //地区集合
        List<IslandBean> islandList = areaService.getIslandListByAll();//岛屿集合
        List<IslandPackageBean> islandPackageList = areaService.getIslandPackageListByPackageType(Integer.parseInt(str));//套餐集合

        //List<FrontMenu> listMenu = frontMenuService.getFrontMenuByModuleId(1);//
        List<Recommend> recommendListHL = recommendService.getRecomendListByModuleId(6);//左边树婚礼套餐
        List<Recommend> recommendListSY = recommendService.getRecomendListByModuleId(7);//左边树摄影套餐
        List<Recommend> recommendListZX = recommendService.getRecomendListByModuleId(8);//左边树咨询套餐

        request.setAttribute("recommendListHL",recommendListHL);
        request.setAttribute("recommendListSY",recommendListSY);
        request.setAttribute("recommendListZX",recommendListZX);

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
