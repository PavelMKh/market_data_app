package com.pavelkhomenko.marketdata.repository.dal;

import com.pavelkhomenko.marketdata.entity.Company;

import java.util.Optional;

public interface CompanyOverviewDao {
    Optional<Company> getCompanyOverview(String ticker);

    void saveCompanyOverview(Company company);
}
