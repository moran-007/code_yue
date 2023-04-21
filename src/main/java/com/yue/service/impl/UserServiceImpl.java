package com.yue.service.impl;


import com.yue.entity.UserInfo;
import com.yue.mapper.UserMapper;
import com.yue.service.UserService;
import com.yue.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;


public class UserServiceImpl implements UserService {
    // 创建
    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

    @Override
    public List<UserInfo> login(String phone, String password) {
        SqlSession sqlSession = factory.openSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        List<UserInfo> login = mapper.login(phone, password);
        sqlSession.close();
        return login;
    }

    @Override
    public int register(UserInfo userInfo) {
        SqlSession sqlSession = factory.openSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        int register = mapper.register(userInfo);
        sqlSession.commit();
        sqlSession.close();
        return register;
    }

    @Override
    public int updateUser(UserInfo userInfo) {
        SqlSession sqlSession = factory.openSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        int i = mapper.updateUser(userInfo);
        sqlSession.commit();
        sqlSession.close();
        return i;
    }

    @Override
    public int updateMyPassword(UserInfo userInfo) {
        SqlSession sqlSession = factory.openSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        int i = mapper.updateMyPassword(userInfo);
        sqlSession.commit();
        sqlSession.close();
        return i;
    }

    @Override
    public List<UserInfo> findAllByAdminId(long adminId) {
        SqlSession sqlSession = factory.openSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        List<UserInfo> allByAdminId = mapper.findAllByAdminId(adminId);
        sqlSession.close();
        return allByAdminId;
    }

    @Override
    public List<UserInfo> findSunUser(UserInfo userInfo) {
        SqlSession sqlSession = factory.openSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        List<UserInfo> sunUser = mapper.findSunUser(userInfo);
        sqlSession.close();
        return sunUser;
    }

    @Override
    public void updatePassword(UserInfo userInfo) {
        SqlSession sqlSession = factory.openSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        mapper.updatePassword(userInfo);
        sqlSession.commit();
        sqlSession.close();
    }
}
