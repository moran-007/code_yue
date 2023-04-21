package com.yue.service.impl;

import com.yue.entity.RenewalInfo;
import com.yue.mapper.RenewalMapper;
import com.yue.service.RenewalService;
import com.yue.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class RenewalServiceImpl implements RenewalService {
    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

    @Override
    public RenewalInfo selectRenewalById(int id) {
        SqlSession sqlSession = factory.openSession();
        RenewalMapper mapper = sqlSession.getMapper(RenewalMapper.class);
        RenewalInfo renewalInfo = mapper.selectRenewalById(id);
        sqlSession.close();
        return renewalInfo;
    }

    @Override
    public int insertRenewal(RenewalInfo renewalInfo) {
        SqlSession sqlSession = factory.openSession();
        RenewalMapper mapper = sqlSession.getMapper(RenewalMapper.class);
        int i = mapper.insertRenewal(renewalInfo);
        sqlSession.commit();
        sqlSession.close();
        return i;
    }

    @Override
    public void updateRenewal(RenewalInfo renewalInfo) {
        SqlSession sqlSession = factory.openSession();
        RenewalMapper mapper = sqlSession.getMapper(RenewalMapper.class);
        mapper.updateRenewal(renewalInfo);
        sqlSession.commit();
        sqlSession.close();
    }

    @Override
    public void deleteRenewal(int id) {
        SqlSession sqlSession = factory.openSession();
        RenewalMapper mapper = sqlSession.getMapper(RenewalMapper.class);
        mapper.deleteRenewal(id);
        sqlSession.commit();
        sqlSession.close();
    }

    @Override
    public List<RenewalInfo> selectAllRenewal() {
        SqlSession sqlSession = factory.openSession();
        RenewalMapper mapper = sqlSession.getMapper(RenewalMapper.class);
        List<RenewalInfo> renewalList = mapper.selectAllRenewal();
        sqlSession.close();
        return renewalList;
    }

    @Override
    public List<RenewalInfo> selectRenewalByUserId(int userId) {
        SqlSession sqlSession = factory.openSession();
        RenewalMapper mapper = sqlSession.getMapper(RenewalMapper.class);
        List<RenewalInfo> renewalList = mapper.selectRenewalByUserId(userId);
        sqlSession.close();
        return renewalList;
    }

    @Override
    public List<RenewalInfo> selectRenewalByStatus(int status) {
        SqlSession sqlSession = factory.openSession();
        RenewalMapper mapper = sqlSession.getMapper(RenewalMapper.class);
        List<RenewalInfo> renewalList = mapper.selectRenewalByStatus(status);
        sqlSession.close();
        return renewalList;
    }

    @Override
    public List<RenewalInfo> selectRenewalByAdminId(int adminId) {
        SqlSession sqlSession = factory.openSession();
        RenewalMapper mapper = sqlSession.getMapper(RenewalMapper.class);
        List<RenewalInfo> renewalList = mapper.selectRenewalByAdminId(adminId);
        sqlSession.close();
        return renewalList;
    }

    @Override
    public List<RenewalInfo> selectByCondition(RenewalInfo renewalInfo) {
        SqlSession sqlSession = factory.openSession();
        RenewalMapper mapper = sqlSession.getMapper(RenewalMapper.class);
        List<RenewalInfo> renewalInfos = mapper.selectByCondition(renewalInfo);
        sqlSession.close();
        return renewalInfos;
    }
}
