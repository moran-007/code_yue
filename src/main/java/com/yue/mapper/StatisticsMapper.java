package com.yue.mapper;

import com.yue.entity.StatisticsInfo;

import java.util.List;

public interface StatisticsMapper {

    // 根据ID查询统计信息
    StatisticsInfo selectStatisticsById(int id);

    // 查询所有统计信息
    List<StatisticsInfo> selectAllStatistics();

    // 根据书籍类型查询统计信息
    List<StatisticsInfo> selectStatisticsByType(String type);

    // 插入统计信息
    void insertStatistics(StatisticsInfo statisticsInfo);

    // 更新统计信息
    void updateStatistics(StatisticsInfo statisticsInfo);

    // 根据ID删除统计信息
    void deleteStatisticsById(int id);

    // 清空所有统计信息
    void deleteAllStatistics();

}

