package com.yue.mapper;

import com.yue.entity.AdminInfo;

import java.util.List;

public interface AdminMapper {

    /**
     * 管理员登录
     */
    List<AdminInfo> adminLogin(AdminInfo adminInfo);
}
