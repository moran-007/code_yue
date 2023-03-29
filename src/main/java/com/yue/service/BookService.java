package com.yue.service;

import com.yue.entity.BookInfo;

import java.util.List;

public interface BookService {
    // 添加一本书
    int addBook(BookInfo bookInfo);

    // 根据ID删除一本书
    int deleteBookById(int id);

    // 更新一本书的信息
    int updateBook(BookInfo bookInfo);

    // 根据ID查询一本书
    BookInfo findBookById(int id);

    // 查询所有书籍
    List<BookInfo> findAllBooks();

    // 根据书名模糊查询书籍
    List<BookInfo> findBooksByTitle(String title);

    // 根据作者名模糊查询书籍
    List<BookInfo> findBooksByAuthor(String author);

    // 根据出版社查询书籍
    List<BookInfo> findBooksByPublisher(String publisher);

    // 条件查询
    List<BookInfo> findBooks(BookInfo bookInfo);
}
