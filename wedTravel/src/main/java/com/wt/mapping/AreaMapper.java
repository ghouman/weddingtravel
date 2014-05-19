package com.wt.mapping;

import java.util.List;
import com.wt.bean.table.AreaBean;
import com.wt.bean.table.IslandBean;
import com.wt.bean.table.IslandPackageBean;

public interface AreaMapper {
    public List<AreaBean> selectAllArea();
    public List<IslandBean> selectAllIsland();
    public List<IslandPackageBean> selectIslandPackageByPackageId(Integer packageType);
    List<IslandBean> selectCountryByAreaId(int areaId);
}