
package com.wt.service;

import com.wt.bean.table.AreaBean;
import com.wt.bean.table.IslandBean;
import com.wt.bean.table.IslandPackageBean;
import com.wt.daoImpl.AreaDaoImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import javax.annotation.Resource;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: ghm
 * Date: 14-5-5
 * Time: 下午11:41
 * To change this template use File | Settings | File Templates.
 */
@Repository
public class AreaService {
    @Resource
    @Autowired
    private AreaDaoImpl areaDaoImpl;

    public List<AreaBean> getAreaListByAll(){
        return areaDaoImpl.getAreaByAll();
    }
    public List<IslandBean> getIslandListByAll(){
        return areaDaoImpl.getIslandByAll();
    }
    public List<IslandPackageBean> getIslandPackageListByPackageType(Integer packageType){
        return areaDaoImpl.getIslandByPackageType(packageType);
    }
}
