package com.yue.service.impl;

import com.yue.entity.BookInfo;
import com.yue.mapper.BookMapper;
import com.yue.service.BookService;
import com.yue.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class BookServiceImpl implements BookService {
    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

    @Override
    public int addBook(BookInfo bookInfo) {
        SqlSession sqlSession = factory.openSession();
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        int i = mapper.addBook(bookInfo);
        sqlSession.commit();
        sqlSession.close();
        return i;
    }

    @Override
    public int deleteBookById(int id) {
        SqlSession sqlSession = factory.openSession();
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        int i = mapper.deleteBookById(id);
        sqlSession.commit();
        sqlSession.close();
        return i;
    }

    @Override
    public int updateBook(BookInfo bookInfo) {
        SqlSession sqlSession = factory.openSession();
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        int i = mapper.updateBook(bookInfo);
        sqlSession.commit();
        sqlSession.close();
        return i;
    }

    @Override
    public BookInfo findBookById(int id) {
        SqlSession sqlSession = factory.openSession();
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        BookInfo bookById = mapper.findBookById(id);
        sqlSession.close();
        return bookById;
    }

    @Override
    public List<BookInfo> findAllBooks() {
        SqlSession sqlSession = factory.openSession();
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        List<BookInfo> list = mapper.findAllBooks();
        sqlSession.close();
        return list;
    }

    @Override
    public List<BookInfo> findBooksByTitle(String title) {
        SqlSession sqlSession = factory.openSession();
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        List<BookInfo> list = mapper.findBooksByTitle(title);
        sqlSession.close();
        return list;
    }

    @Override
    public List<BookInfo> findBooksByAuthor(String author) {
        SqlSession sqlSession = factory.openSession();
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        List<BookInfo> list = mapper.findBooksByAuthor(author);
        return list;
    }

    @Override
    public List<BookInfo> findBooksByPublisher(String publisher) {
        SqlSession sqlSession = factory.openSession();
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        List<BookInfo> list = mapper.findBooksByPublisher(publisher);
        sqlSession.close();
        return list;
    }

    @Override
    public List<BookInfo> findBooks(BookInfo bookInfo) {
        SqlSession sqlSession = factory.openSession();
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        List<BookInfo> list = mapper.findBooks(bookInfo);
        return list;
    }
}
