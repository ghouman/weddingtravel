package com.wt.daoImpl;

import com.wt.bean.table.AreaBean;
import com.wt.bean.table.IslandBean;
import com.wt.bean.table.IslandPackageBean;
import com.wt.mapping.AreaMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: ghm
 * Date: 14-5-7
 * Time: 下午10:40
 * To change this template use File | Settings | File Templates.
 */
@Repository
public class AreaDaoImpl {

    @Autowired
    private AreaMapper areaMapper;
    
    public List<AreaBean> getAreaByAll() {
        return areaMapper.selectAllArea();
    }
    public List<IslandBean> getIslandByAll(){
    	return areaMapper.selectAllIsland();
    }
    public List<IslandPackageBean> getIslandByPackageType(Integer packageType){
    	return areaMapper.selectIslandPackageByPackageId(packageType);
    }
}
