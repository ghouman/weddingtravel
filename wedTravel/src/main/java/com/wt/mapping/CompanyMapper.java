package com.wt.mapping;

import com.wt.bean.table.Company;

public interface CompanyMapper {
    Company selectByPrimaryKey(Integer id);

    Company selectCompany();
}