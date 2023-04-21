package com.yue.mapper;

import com.yue.entity.ReserveInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReserveMapper {

    // 根据预约ID查询预约信息
    ReserveInfo selectReserveById(int id);

    // 插入新的预约信息
    void insertReserve(ReserveInfo reserveInfo);

    // 更新预约信息
    void updateReserve(ReserveInfo reserveInfo);
    // 更新借阅状态
    int updateStatus(@Param("id")String id);
    // 删除预约信息
    void deleteReserve(int id);

    // 查询所有预约信息
    List<ReserveInfo> selectAllReserve();

    // 根据用户ID查询预约信息
    List<ReserveInfo> selectReserveByUserId(int userId);

    // 根据图书ID查询预约信息
    List<ReserveInfo> selectReserveByBookId(int bookId);

    // 根据预约状态查询预约信息
    List<ReserveInfo> selectReserveByStatus(int status);

    List<ReserveInfo> selectByCondition(ReserveInfo reserveInfo);
//    // 根据管理员ID查询预约信息
//    List<ReserveInfo> selectReserveByAdminId(int adminId);

}
