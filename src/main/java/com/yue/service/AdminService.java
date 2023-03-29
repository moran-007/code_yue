package com.yue.service;

import com.yue.entity.AdminInfo;
import com.yue.entity.UserInfo;

import java.util.List;

public interface AdminService {
    List<UserInfo> adminLogin(AdminInfo adminInfo);
}
