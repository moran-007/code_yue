package com.yue.service;

import com.yue.entity.AdminInfo;

import java.util.List;

public interface AdminService {
    List<AdminInfo> adminLogin(AdminInfo adminInfo);

    void updateId(AdminInfo adminInfo);

}
