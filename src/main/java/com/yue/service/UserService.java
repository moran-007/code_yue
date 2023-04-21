package com.yue.service;


import com.yue.entity.UserInfo;

import java.util.List;

public interface UserService {
    List<UserInfo> login(String phone, String password);
    int register(UserInfo userInfo);

    // 更新信息
    int updateUser(UserInfo userInfo);
    // 修改密码
    int updateMyPassword(UserInfo userInfo);

    List<UserInfo> findAllByAdminId(long adminId );

    List<UserInfo> findSunUser(UserInfo userInfo);

    // 重置密码
    void updatePassword(UserInfo userInfo);


}
