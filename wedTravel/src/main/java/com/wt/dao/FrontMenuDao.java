package com.wt.dao;

import com.wt.bean.table.FrontMenu;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: ghm
 * Date: 14-5-10
 * Time: 下午10:58
 * To change this template use File | Settings | File Templates.
 */
public interface FrontMenuDao {
    List<FrontMenu> selectByModuleId(Integer ModuleId);
}
