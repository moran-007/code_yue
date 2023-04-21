package com.yue.servlet;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.yue.entity.CommentInfo;
import com.yue.service.CommentService;
import com.yue.service.impl.CommentServiceImpl;
import com.yue.util.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;

@WebServlet("/comments/*")
public class CommentServlet extends BaseServlet {

    private CommentService commentService = new CommentServiceImpl();

    // 添加评论
    public void addComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取CommentInfo对象的各个属性值
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        // 创建CommentInfo对象
        CommentInfo comment = JSONObject.parseObject(line, CommentInfo.class);
        // 调用commentService的addComment方法进行添加
        int i = commentService.addComment(comment);
        if (i==1){
            response.getWriter().write("success");
        }else {
            response.getWriter().write("error");
        }
    }

    // 根据评论ID删除评论
    public void deleteCommentById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要删除的评论的ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String id = JSONObject.parseObject(line).getString("id");
        // 调用commentService的deleteCommentById方法进行删除
        int i = commentService.deleteCommentById(Integer.parseInt(id));
        if (i==1){
            response.getWriter().write("success");
        }else {
            response.getWriter().write("error");
        }
    }

    // 根据图书ID删除评论
    public void deleteCommentsByBookId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要删除评论的书籍的ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String bookId = JSONObject.parseObject(line).getString("bookId");
        // 调用commentService的deleteCommentsByBookId方法进行删除
        int i = commentService.deleteCommentsByBookId(Integer.parseInt(bookId));
        if (i==1){
            response.getWriter().write("success");
        }else {
            response.getWriter().write("error");
        }
    }

    // 更新评论
    public void updateComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取CommentInfo对象的各个属性值
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        // 创建CommentInfo对象
        CommentInfo comment = JSONObject.parseObject(line, CommentInfo.class);
        // 调用commentService的updateComment方法进行更新
        int i = commentService.updateComment(comment);
        if (i==1){
            response.getWriter().write("success");
        }else {
            response.getWriter().write("error");
        }
    }

    // 根据评论ID查询评论
    public void findCommentById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要查询的评论的ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String id = JSONObject.parseObject(line).getString("id");
        // 调用commentService的findCommentById方法进行查询
        CommentInfo commentById = commentService.findCommentById(Integer.parseInt(id));
        String jsonString = JSON.toJSONString(commentById);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 根据图书ID查询评论列表
    public void findCommentsByBookId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要查询评论的书籍的ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String bookId = JSONObject.parseObject(line).getString("bookId");
        // 调用commentService的findCommentsByBookId方法进行查询
        List<CommentInfo> commentsByBookId = commentService.findCommentsByBookId(Integer.parseInt(bookId));
        String jsonString = JSON.toJSONString(commentsByBookId);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }
    public void findAllContent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CommentInfo> commentInfoList = commentService.findAllContent();
        String jsonString = JSON.toJSONString(commentInfoList);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 条件模糊查询
    public void selectByCondition(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要查询的预约状态
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        CommentInfo commentInfo = JSONObject.parseObject(line,CommentInfo.class);
        // 调用reserveService的findReservesByStatus方法进行查询
        List<CommentInfo> list = commentService.selectByCondition(commentInfo);
        String jsonString = JSON.toJSONString(list);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);

    }
}
