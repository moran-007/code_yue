package com.yue.mapper;

import com.yue.entity.FineInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FineMapper {

        // 根据罚款ID查询罚款信息
        FineInfo selectFineById(int id);

        // 添加罚款信息
        void insertFine(FineInfo fineInfo);

        // 更新罚款信息
        void updateFine(FineInfo fineInfo);

        // 删除罚款信息
        int deleteFine(int id);

        // 查询所有罚款信息
        List<FineInfo> selectAllFine();

        // 查询未缴纳的罚款信息
        List<FineInfo> selectUnpaidFine();

        // 查询某个用户的所有罚款信息
        List<FineInfo> selectFineByUserId(@Param("userId") int userId);

        // 查询某个图书的所有罚款信息
        List<FineInfo> selectFineByBookId(@Param("bookId") int bookId);

}
