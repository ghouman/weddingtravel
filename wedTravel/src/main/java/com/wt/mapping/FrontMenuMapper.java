package com.wt.mapping;

import com.wt.bean.table.FrontMenu;

import java.util.List;

public interface FrontMenuMapper {
    FrontMenu selectByPrimaryKey(Integer id);

    List<FrontMenu> selectByModuleId(int moduleId);
}