package com.yue.service;


import com.yue.entity.UserInfo;

import java.util.List;

public interface UserService {
    List<UserInfo> login(String phone, String password);
    int register(UserInfo userInfo);

}
