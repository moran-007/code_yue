package com.yue.mapper;

import com.yue.entity.BorrowInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BorrowMapper {

    // 添加借阅信息
    int addBorrow(BorrowInfo borrowInfo);

    // 更新借阅信息
    int updateBorrow(BorrowInfo borrowInfo);

    // 根据ID删除借阅信息
    int deleteBorrowById(@Param("id") long id);

    // 根据ID查询借阅信息
    BorrowInfo findBorrowById(@Param("id") long id);

    // 查询所有借阅信息
    List<BorrowInfo> findAllBorrows();

    // 根据用户ID查询借阅信息
    List<BorrowInfo> findBorrowsByUserId(@Param("userId") long userId);

    // 根据图书ID查询借阅信息
    List<BorrowInfo> findBorrowsByBookId(@Param("bookId") long bookId);

    // 根据状态查询借阅信息
    List<BorrowInfo> findBorrowsByStatus(@Param("status") int status);

    // 模糊查询
    List<BorrowInfo> selectByCondition(BorrowInfo borrowInfo);

    // 归还图书
    int updateStatus(@Param("id") String id);

//    // 根据用户ID和状态查询借阅信息
//    List<BorrowInfo> findBorrowInfosByUserIdAndStatus(@Param("userId") long userId, @Param("status") int status);
//
//    // 根据图书ID和状态查询借阅信息
//    List<BorrowInfo> findBorrowInfosByBookIdAndStatus(@Param("bookId") long bookId, @Param("status") int status);

}
