package com.yue.mapper;

import com.yue.entity.BookInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {
    // 添加一本书
    int addBook(BookInfo bookInfo);

    // 根据ID删除一本书
    int deleteBookById(@Param("id") int id);

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
//    // 根据价格范围查询书籍
//    List<BookInfo> findBooksByPriceRange(double minPrice, double maxPrice);
}
