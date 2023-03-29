package com.yue.mapper;

import com.yue.entity.AdminInfo;
import com.yue.entity.UserInfo;

import java.util.List;

public interface AdminMapper {

    /**
     * 管理员登录
     */
    List<UserInfo> adminLogin(AdminInfo adminInfo);
}
