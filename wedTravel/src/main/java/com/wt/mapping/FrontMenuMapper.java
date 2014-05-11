package com.wt.mapping;

import com.wt.bean.table.FrontMenu;

public interface FrontMenuMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FrontMenu record);

    int insertSelective(FrontMenu record);

    FrontMenu selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(FrontMenu record);

    int updateByPrimaryKey(FrontMenu record);
}