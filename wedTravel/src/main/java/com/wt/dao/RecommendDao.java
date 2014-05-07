package com.wt.dao;

import com.wt.bean.table.Recommend;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: ghm
 * Date: 14-5-7
 * Time: 下午10:39
 * To change this template use File | Settings | File Templates.
 */


public interface RecommendDao{
    public List<Recommend> getRecommendByModuleId(int moduleId);
}
