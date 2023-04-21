package com.yue.service.impl;

import com.yue.entity.BorrowInfo;
import com.yue.mapper.BorrowMapper;
import com.yue.service.BorrowService;
import com.yue.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class BorrowServiceImpl implements BorrowService {

    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();


    @Override
    public int addBorrow(BorrowInfo borrowInfo) {
        SqlSession sqlSession = factory.openSession();
        BorrowMapper mapper = sqlSession.getMapper(BorrowMapper.class);
        int i = mapper.addBorrow(borrowInfo);
        sqlSession.commit();
        sqlSession.close();
        return i;
    }

    @Override
    public int updateBorrow(BorrowInfo borrowInfo) {
        SqlSession sqlSession = factory.openSession();
        BorrowMapper mapper = sqlSession.getMapper(BorrowMapper.class);
        int i = mapper.updateBorrow(borrowInfo);
        sqlSession.commit();
        sqlSession.close();
        return i;
    }

    @Override
    public int deleteBorrowById(long id) {
        SqlSession sqlSession = factory.openSession();
        BorrowMapper mapper = sqlSession.getMapper(BorrowMapper.class);
        int i = mapper.deleteBorrowById(id);
        sqlSession.commit();
        sqlSession.close();
        return i;
    }

    @Override
    public BorrowInfo findBorrowById(long id) {

        SqlSession sqlSession = factory.openSession();
        BorrowMapper mapper = sqlSession.getMapper(BorrowMapper.class);
        BorrowInfo borrowById = mapper.findBorrowById(id);
        sqlSession.close();
        return borrowById;
    }

    @Override
    public List<BorrowInfo> findAllBorrows() {
        SqlSession sqlSession = factory.openSession();
        BorrowMapper mapper = sqlSession.getMapper(BorrowMapper.class);
        List<BorrowInfo> list = mapper.findAllBorrows();
        sqlSession.close();
        return list;
    }

    @Override
    public List<BorrowInfo> findBorrowsByUserId(long userId) {
        SqlSession sqlSession = factory.openSession();
        BorrowMapper mapper = sqlSession.getMapper(BorrowMapper.class);
        List<BorrowInfo> list = mapper.findBorrowsByUserId(userId);
        sqlSession.close();
        return list;
    }

    @Override
    public List<BorrowInfo> findBorrowsByBookId(long bookId) {
        SqlSession sqlSession = factory.openSession();
        BorrowMapper mapper = sqlSession.getMapper(BorrowMapper.class);
        List<BorrowInfo> list = mapper.findBorrowsByBookId(bookId);
        sqlSession.close();
        return list;
    }

    @Override
    public List<BorrowInfo> findBorrowsByStatus(int status) {
        SqlSession sqlSession = factory.openSession();
        BorrowMapper mapper = sqlSession.getMapper(BorrowMapper.class);
        List<BorrowInfo> list = mapper.findBorrowsByStatus(status);
        sqlSession.close();
        return list;
    }

    @Override
    public List<BorrowInfo> selectByCondition(BorrowInfo borrowInfo) {
        SqlSession sqlSession = factory.openSession();
        BorrowMapper mapper = sqlSession.getMapper(BorrowMapper.class);
        List<BorrowInfo> borrowInfos = mapper.selectByCondition(borrowInfo);
        sqlSession.close();
        return borrowInfos;
    }

    @Override
    public int updateStatus(String id) {
        SqlSession sqlSession = factory.openSession();
        BorrowMapper mapper = sqlSession.getMapper(BorrowMapper.class);
        int i = mapper.updateStatus(id);
        sqlSession.commit();
        sqlSession.close();
        return i;
    }
}
