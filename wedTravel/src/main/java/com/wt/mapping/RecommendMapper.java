package com.wt.mapping;

import com.wt.bean.table.Recommend;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface RecommendMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Recommend record);

    int insertSelective(Recommend record);

    Recommend selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Recommend record);

    int updateByPrimaryKey(Recommend record);

    public List<Recommend> selectByModuleId(int moduleId);
}