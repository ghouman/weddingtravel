package com.wt.daoImpl;

import com.wt.bean.table.Recommend;
import com.wt.dao.RecommendDao;
import com.wt.mapping.RecommendMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: ghm
 * Date: 14-5-7
 * Time: 下午10:40
 * To change this template use File | Settings | File Templates.
 */
@Repository
public class RecommendDaoImpl implements RecommendDao {

    @Autowired
    private RecommendMapper recommendMapper;
    @Override
    public List<Recommend> getRecommendByModuleId(int moduleId) {
        return recommendMapper.selectByModuleId(moduleId);
    }

    public RecommendMapper getRecommendMapper() {
        return recommendMapper;
    }

    public void setRecommendMapper(RecommendMapper recommendMapper) {
        this.recommendMapper = recommendMapper;
    }
}
