package com.wt.daoImpl;

import com.wt.bean.table.Company;
import com.wt.dao.CompanyDao;
import com.wt.mapping.CompanyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created with IntelliJ IDEA.
 * User: ghm
 * Date: 14-5-12
 * Time: 下午10:24
 * To change this template use File | Settings | File Templates.
 */
@Repository
public class CompanyDaoImpl implements CompanyDao {
    @Autowired
    private CompanyMapper companyMapper;
    @Override
    public Company selectCompany() {
        return companyMapper.selectCompany();
    }
}
