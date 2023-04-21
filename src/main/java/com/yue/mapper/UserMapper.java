package com.yue.mapper;

import com.yue.entity.UserInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    /**
     * 1. 用户登录
     * 2. 用户注册
     */
    List<UserInfo> login(@Param("phone")String phone, @Param("password") String password);

    int register(UserInfo userInfo);

    int updateUser(UserInfo userInfo);

    int updateMyPassword(UserInfo userInfo);


    List<UserInfo> findAllByAdminId(@Param("adminId") long adminId );

    List<UserInfo> findSunUser(UserInfo userInfo);

    /*
    * 重置密码
    */
    void updatePassword(UserInfo userInfo);

}
