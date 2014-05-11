package com.wt.daoImpl;

import com.wt.bean.table.FrontMenu;
import com.wt.dao.FrontMenuDao;
import com.wt.mapping.FrontMenuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: ghm
 * Date: 14-5-11
 * Time: 上午10:14
 * To change this template use File | Settings | File Templates.
 */
@Repository
public class FrontMenuDaoImpl implements FrontMenuDao{
    @Autowired
    public FrontMenuMapper frontMenuMapper;

    @Override
    public List<FrontMenu> selectByModuleId(Integer moduleId) {
        return frontMenuMapper.selectByModuleId(moduleId);
    }
}
