package com.yue.servlet;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.yue.entity.BookInfo;
import com.yue.service.BookService;
import com.yue.service.impl.BookServiceImpl;
import com.yue.util.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;


@WebServlet("/books/*")

public class BookServlet extends BaseServlet {
    BookService bookService =new BookServiceImpl();

        // 添加一本书
        public void addBook(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.setCharacterEncoding("UTF-8");

            // 从request中获取BookInfo对象的各个属性值
            BufferedReader reader = request.getReader();
            String line = reader.readLine();
            // 创建BookInfo对象
            BookInfo bookInfo = JSON.parseObject(line, BookInfo.class);
            // 调用bookService的addBook方法进行添加
            int i = bookService.addBook(bookInfo);
            if (i==1) {
                response.getWriter().write("success");
            }else {
                response.getWriter().write("error");

            }
            }

        // 根据ID删除一本书
        public void deleteBookById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            // 从request中获取要删除的书籍的ID
            BufferedReader reader = request.getReader();
            String line = reader.readLine();
            int bookId = Integer.parseInt(JSONObject.parseObject(line).getString("BookId"));
            // 调用bookService的deleteBookById方法进行删除
            int i = bookService.deleteBookById(bookId);
            if(i==1){
                response.getWriter().write("success");
            }else {
                response.getWriter().write("error");
            }

        }

        // 更新一本书的信息
        public void updateBook(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            // 从request中获取BookInfo对象的各个属性值
            BufferedReader reader = request.getReader();
            String line = reader.readLine();
            // 创建BookInfo对象
            BookInfo bookInfo = JSON.parseObject(line, BookInfo.class);
            // 调用bookService的updateBook方法进行更新
            int i = bookService.updateBook(bookInfo);
            if (i == 1) {
                response.getWriter().write("success");
            } else {
                response.getWriter().write("error");
            }
        }
        // 根据ID查询一本书
        public void findBookById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            // 从request中获取要查询的书籍的ID
            BufferedReader reader = request.getReader();
            String line = reader.readLine();
            int bookId = Integer.parseInt(JSONObject.parseObject(line).getString("BookId"));
            // 调用bookService的findBookById方法进行查询
            BookInfo bookById = bookService.findBookById(bookId);
            if (bookById != null) {
                String jsonString = JSON.toJSONString(bookById);
                response.setContentType("text/json;charset=utf-8");
                response.getWriter().write(jsonString);
            }else {
                response.getWriter().write("error");
            }

        }

    /*
     * 查询所有书籍
     */
    public void findAllBooks(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<BookInfo> bookList = bookService.findAllBooks();
        String jsonString = JSON.toJSONString(bookList);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 根据书名模糊查询书籍
    public void findBooksByTitle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取书籍的标题
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String title = JSONObject.parseObject(line).getString("title");
        // 调用bookService的findBooksByTitle方法进行查询
        List<BookInfo> booksByTitle = bookService.findBooksByTitle(title);
        String jsonString = JSON.toJSONString(booksByTitle);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 根据作者名模糊查询书籍
    public void findBooksByAuthor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取书籍的作者
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String author = JSONObject.parseObject(line).getString("author");
        // 调用bookService的findBooksByAuthor方法进行查询
        List<BookInfo> booksByAuthor = bookService.findBooksByAuthor(author);
        String jsonString = JSON.toJSONString(booksByAuthor);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 根据出版社查询书籍
    public void findBooksByPublisher(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取书籍的出版社
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String publisher = JSONObject.parseObject(line).getString("publisher");
        // 调用bookService的findBooksByPublisher方法进行查询
        List<BookInfo> booksByPublisher = bookService.findBooksByPublisher(publisher);
        String jsonString = JSON.toJSONString(booksByPublisher);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 条件查询
    public void findBooks(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取BookInfo对象的各个属性值
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        // 创建BookInfo对象
        BookInfo bookInfo = JSONObject.parseObject(line, BookInfo.class);
        // 调用bookService的findBooks方法进行查询
        List<BookInfo> books = bookService.findBooks(bookInfo);
        String jsonString = JSON.toJSONString(books);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }
}
