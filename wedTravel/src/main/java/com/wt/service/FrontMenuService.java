package com.wt.service;

import com.wt.bean.table.FrontMenu;
import com.wt.dao.FrontMenuDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: ghm
 * Date: 14-5-10
 * Time: 下午10:57
 * To change this template use File | Settings | File Templates.
 */
@Service
public class FrontMenuService {
    @Autowired
    private FrontMenuDao frontMenuDao;

    public List<FrontMenu> getFrontMenuByModuleId(int moduleId){
        return frontMenuDao.selectByModuleId(moduleId);
    }
}
