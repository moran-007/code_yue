package com.yue.service.impl;

import com.yue.entity.FineInfo;
import com.yue.mapper.FineMapper;
import com.yue.service.FineService;
import com.yue.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class FineServiceImpl implements FineService {
    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

    @Override
    public FineInfo selectFineById(int id) {
        SqlSession sqlSession = factory.openSession();
        FineMapper mapper = sqlSession.getMapper(FineMapper.class);
        FineInfo fine = mapper.selectFineById(id);
        sqlSession.close();
        return fine;
    }

    @Override
    public void insertFine(FineInfo fineInfo) {
        SqlSession sqlSession = factory.openSession();
        FineMapper mapper = sqlSession.getMapper(FineMapper.class);
        mapper.insertFine(fineInfo);
        sqlSession.commit();
        sqlSession.close();
    }

    @Override
    public void updateFine(FineInfo fineInfo) {
        SqlSession sqlSession = factory.openSession();
        FineMapper mapper = sqlSession.getMapper(FineMapper.class);
        mapper.updateFine(fineInfo);
        sqlSession.commit();
        sqlSession.close();
    }

    @Override
    public void deleteFine(int id) {
        SqlSession sqlSession = factory.openSession();
        FineMapper mapper = sqlSession.getMapper(FineMapper.class);
        mapper.deleteFine(id);
        sqlSession.commit();
        sqlSession.close();
    }

    @Override
    public List<FineInfo> selectAllFine() {
        SqlSession sqlSession = factory.openSession();
        FineMapper mapper = sqlSession.getMapper(FineMapper.class);
        List<FineInfo> fines = mapper.selectAllFine();
        sqlSession.close();
        return fines;
    }

    @Override
    public List<FineInfo> selectUnpaidFine() {
        SqlSession sqlSession = factory.openSession();
        FineMapper mapper = sqlSession.getMapper(FineMapper.class);
        List<FineInfo> unpaidFines = mapper.selectUnpaidFine();
        sqlSession.close();
        return unpaidFines;
    }

    @Override
    public List<FineInfo> selectFineByUserId(int userId) {
        SqlSession sqlSession = factory.openSession();
        FineMapper mapper = sqlSession.getMapper(FineMapper.class);
        List<FineInfo> fines = mapper.selectFineByUserId(userId);
        sqlSession.close();
        return fines;
    }

    @Override
    public List<FineInfo> selectFineByBookId(int bookId) {
        SqlSession sqlSession = factory.openSession();
        FineMapper mapper = sqlSession.getMapper(FineMapper.class);
        List<FineInfo> fines = mapper.selectFineByBookId(bookId);
        sqlSession.close();
        return fines;
    }

}
