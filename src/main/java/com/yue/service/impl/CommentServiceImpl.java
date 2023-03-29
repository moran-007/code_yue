package com.yue.service.impl;

import com.yue.entity.CommentInfo;
import com.yue.mapper.CommentMapper;
import com.yue.service.CommentService;
import com.yue.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class CommentServiceImpl implements CommentService {
    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();
    @Override
    public int addComment(CommentInfo comment) {
        SqlSession sqlSession = factory.openSession();
        CommentMapper mapper = sqlSession.getMapper(CommentMapper.class);
        int i = mapper.addComment(comment);
        sqlSession.commit();
        sqlSession.close();

        return i;
    }

    @Override
    public int deleteCommentById(int id) {
        SqlSession sqlSession = factory.openSession();
        CommentMapper mapper = sqlSession.getMapper(CommentMapper.class);
        int i = mapper.deleteCommentById(id);
        sqlSession.commit();
        sqlSession.close();
        return i;
    }

    @Override
    public int deleteCommentsByBookId(int bookId) {
        SqlSession sqlSession = factory.openSession();
        CommentMapper mapper = sqlSession.getMapper(CommentMapper.class);
        int i = mapper.deleteCommentsByBookId(bookId);
        sqlSession.commit();
        sqlSession.close();
        return i;
    }

    @Override
    public int updateComment(CommentInfo comment) {
        SqlSession sqlSession = factory.openSession();
        CommentMapper mapper = sqlSession.getMapper(CommentMapper.class);
        int i = mapper.updateComment(comment);
        sqlSession.commit();
        sqlSession.close();
        return i;
    }

    @Override
    public CommentInfo findCommentById(int id) {
        SqlSession sqlSession = factory.openSession();
        CommentMapper mapper = sqlSession.getMapper(CommentMapper.class);
        CommentInfo commentById= mapper.findCommentById(id);

        sqlSession.close();
        return commentById;
    }

    @Override
    public List<CommentInfo> findCommentsByBookId(int bookId) {
        SqlSession sqlSession = factory.openSession();
        CommentMapper mapper = sqlSession.getMapper(CommentMapper.class);
        List<CommentInfo> list = mapper.findCommentsByBookId(bookId);
        sqlSession.close();
        return list;
    }
}
