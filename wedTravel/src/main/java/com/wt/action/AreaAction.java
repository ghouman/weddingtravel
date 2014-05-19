package com.wt.action;

import com.opensymphony.xwork2.ActionSupport;
import com.wt.bean.table.AreaBean;
import com.wt.bean.table.FrontMenu;
import com.wt.bean.table.IslandBean;
import com.wt.bean.table.IslandPackageBean;
import com.wt.service.AreaService;
import com.wt.service.FrontMenuService;
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
        request.setAttribute("listMenu",listMenu);
        request.setAttribute("areaList",areaList);
        request.setAttribute("islandList",islandList);
        request.setAttribute("islandPackageList",islandPackageList);
        return SUCCESS;

    }

    //获取区域的国家
    public void ajaxGetCountry() throws Exception {
        request =  ServletActionContext.getRequest();
        response = ServletActionContext.getResponse();
        int areaId = request.getParameter("areaId")==null?0:Integer.parseInt(request.getParameter("areaId"));
        List<IslandBean> countryList = areaService.getCountryByAreaId(areaId);  //地区集合
        JSONArray jsArr = JSONArray.fromObject(countryList);
        String jsonStr = jsArr.toString();
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
