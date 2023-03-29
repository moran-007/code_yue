package com.yue.service.impl;

import com.yue.entity.ReserveInfo;
import com.yue.mapper.ReserveMapper;
import com.yue.service.ReserveService;
import com.yue.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class ReserveServiceImpl implements ReserveService {
    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();
    @Override
    public ReserveInfo selectReserveById(int id) {

        SqlSession sqlSession = factory.openSession();
        ReserveMapper mapper = sqlSession.getMapper(ReserveMapper.class);
        ReserveInfo reserveInfo = mapper.selectReserveById(id);
        sqlSession.close();
        return reserveInfo;
    }

    @Override
    public void insertReserve(ReserveInfo reserveInfo) {
        SqlSession sqlSession = factory.openSession();
        ReserveMapper mapper = sqlSession.getMapper(ReserveMapper.class);
        mapper.insertReserve(reserveInfo);
        sqlSession.commit();
        sqlSession.close();
    }

    @Override
    public void updateReserve(ReserveInfo reserveInfo) {
        SqlSession sqlSession = factory.openSession();
        ReserveMapper mapper = sqlSession.getMapper(ReserveMapper.class);
        mapper.updateReserve(reserveInfo);
        sqlSession.commit();
        sqlSession.close();
    }

    @Override
    public void deleteReserve(int id) {
        SqlSession sqlSession = factory.openSession();
        ReserveMapper mapper = sqlSession.getMapper(ReserveMapper.class);
        mapper.deleteReserve(id);
        sqlSession.commit();
        sqlSession.close();
    }

    @Override
    public List<ReserveInfo> selectAllReserve() {
        SqlSession sqlSession = factory.openSession();
        ReserveMapper mapper = sqlSession.getMapper(ReserveMapper.class);
        List<ReserveInfo> reserveInfos = mapper.selectAllReserve();
        sqlSession.close();
        return reserveInfos;
    }

    @Override
    public List<ReserveInfo> selectReserveByUserId(int userId) {
        SqlSession sqlSession = factory.openSession();
        ReserveMapper mapper = sqlSession.getMapper(ReserveMapper.class);
        List<ReserveInfo> reserveInfos = mapper.selectReserveByUserId(userId);
        sqlSession.close();
        return reserveInfos;
    }

    @Override
    public List<ReserveInfo> selectReserveByBookId(int bookId) {
        SqlSession sqlSession = factory.openSession();
        ReserveMapper mapper = sqlSession.getMapper(ReserveMapper.class);
        List<ReserveInfo> reserveInfos = mapper.selectReserveByBookId(bookId);
        sqlSession.close();
        return reserveInfos;
    }

    @Override
    public List<ReserveInfo> selectReserveByStatus(int status) {
        SqlSession sqlSession = factory.openSession();
        ReserveMapper mapper = sqlSession.getMapper(ReserveMapper.class);
        List<ReserveInfo> reserveInfos = mapper.selectReserveByStatus(status);
        sqlSession.close();
        return reserveInfos;
    }

}
