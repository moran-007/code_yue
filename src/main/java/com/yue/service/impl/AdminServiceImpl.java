package com.yue.service.impl;

import com.yue.entity.AdminInfo;
import com.yue.entity.UserInfo;
import com.yue.mapper.AdminMapper;
import com.yue.service.AdminService;
import com.yue.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class AdminServiceImpl implements AdminService {
    // 创建
    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

    @Override
    public List<UserInfo> adminLogin(AdminInfo adminInfo) {
        SqlSession sqlSession = factory.openSession();
        AdminMapper mapper = sqlSession.getMapper(AdminMapper.class);
        List<UserInfo> i = mapper.adminLogin(adminInfo);
        sqlSession.close();
        return i;
    }
}
