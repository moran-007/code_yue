package com.yue.service;

import com.yue.entity.BorrowInfo;

import java.util.List;

public interface BorrowService {
    // 添加借阅信息
    int addBorrow(BorrowInfo borrowInfo);

    // 更新借阅信息
    int updateBorrow(BorrowInfo borrowInfo);

    // 根据ID删除借阅信息
    int deleteBorrowById( long id);

    // 根据ID查询借阅信息
    BorrowInfo findBorrowById( long id);

    // 查询所有借阅信息
    List<BorrowInfo> findAllBorrows();

    // 根据用户ID查询借阅信息
    List<BorrowInfo> findBorrowsByUserId( long userId);

    // 根据图书ID查询借阅信息
    List<BorrowInfo> findBorrowsByBookId(long bookId);

    // 根据状态查询借阅信息
    List<BorrowInfo> findBorrowsByStatus(int status);

    // 模糊查询
    List<BorrowInfo> selectByCondition(BorrowInfo borrowInfo);
}
