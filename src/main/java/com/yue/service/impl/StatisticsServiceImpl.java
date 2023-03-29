package com.yue.service.impl;

import com.yue.entity.StatisticsInfo;
import com.yue.mapper.StatisticsMapper;
import com.yue.service.StatisticsService;
import com.yue.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class StatisticsServiceImpl implements StatisticsService {

    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

    @Override
    public StatisticsInfo selectStatisticsById(int id) {
        SqlSession sqlSession = factory.openSession();
        StatisticsMapper mapper = sqlSession.getMapper(StatisticsMapper.class);
        StatisticsInfo statisticsInfo = mapper.selectStatisticsById(id);
        sqlSession.close();
        return statisticsInfo;
    }

    @Override
    public List<StatisticsInfo> selectAllStatistics() {
        SqlSession sqlSession = factory.openSession();
        StatisticsMapper mapper = sqlSession.getMapper(StatisticsMapper.class);
        List<StatisticsInfo> statisticsInfos = mapper.selectAllStatistics();
        sqlSession.close();
        return statisticsInfos;
    }

    @Override
    public List<StatisticsInfo> selectStatisticsByType(String type) {
        SqlSession sqlSession = factory.openSession();
        StatisticsMapper mapper = sqlSession.getMapper(StatisticsMapper.class);
        List<StatisticsInfo> statisticsInfos = mapper.selectStatisticsByType(type);
        sqlSession.close();
        return statisticsInfos;
    }

    @Override
    public void insertStatistics(StatisticsInfo statisticsInfo) {
        SqlSession sqlSession = factory.openSession();
        StatisticsMapper mapper = sqlSession.getMapper(StatisticsMapper.class);
        mapper.insertStatistics(statisticsInfo);
        sqlSession.commit();
        sqlSession.close();
    }

    @Override
    public void updateStatistics(StatisticsInfo statisticsInfo) {
        SqlSession sqlSession = factory.openSession();
        StatisticsMapper mapper = sqlSession.getMapper(StatisticsMapper.class);
        mapper.updateStatistics(statisticsInfo);
        sqlSession.commit();
        sqlSession.close();
    }

    @Override
    public void deleteStatisticsById(int id) {
        SqlSession sqlSession = factory.openSession();
        StatisticsMapper mapper = sqlSession.getMapper(StatisticsMapper.class);
        mapper.deleteStatisticsById(id);
        sqlSession.commit();
        sqlSession.close();
    }

    @Override
    public void deleteAllStatistics() {
        SqlSession sqlSession = factory.openSession();
        StatisticsMapper mapper = sqlSession.getMapper(StatisticsMapper.class);
        mapper.deleteAllStatistics();
        sqlSession.commit();
        sqlSession.close();
    }
}
