package com.yue.service;

import com.yue.entity.RenewalInfo;

import java.util.List;

public interface RenewalService {

        // 根据续借ID查询续借信息
        RenewalInfo selectRenewalById(int id);

        // 插入新的续借信息
        int insertRenewal(RenewalInfo renewalInfo);

        // 更新续借信息
        void updateRenewal(RenewalInfo renewalInfo);

        // 删除续借信息
        void deleteRenewal(int id);

        // 查询所有续借信息
        List<RenewalInfo> selectAllRenewal();

        // 根据用户ID查询续借信息
        List<RenewalInfo> selectRenewalByUserId(int userId);

        // 根据审核状态查询续借信息
        List<RenewalInfo> selectRenewalByStatus(int status);

        // 根据管理员ID查询续借信息
        List<RenewalInfo> selectRenewalByAdminId(int adminId);

        List<RenewalInfo> selectByCondition(RenewalInfo renewalInfo);

        /*
         * 续借状态修改
         * 1. 通过审核pass
         * 2. 拒绝UPass
         * */
        int passStatus(String id);
        int UPassStatus(String id);
}
