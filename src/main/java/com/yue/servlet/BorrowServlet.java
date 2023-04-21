package com.yue.servlet;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.yue.entity.BorrowInfo;
import com.yue.service.BorrowService;
import com.yue.service.impl.BorrowServiceImpl;
import com.yue.util.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;

@WebServlet("/borrows/*")
public class BorrowServlet extends BaseServlet {
    private BorrowService borrowService = new BorrowServiceImpl();

    // 添加借阅信息
    public void addBorrow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取BorrowInfo对象的各个属性值
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        // 创建BorrowInfo对象
        BorrowInfo borrowInfo = JSONObject.parseObject(line, BorrowInfo.class);
        // 调用borrowService的addBorrow方法进行添加
        int i = borrowService.addBorrow(borrowInfo);
        if(i==1){
            response.getWriter().write("success");
        }else {
            response.getWriter().write("error");
        }
    }

    // 更新借阅信息
    public void updateBorrow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取BorrowInfo对象的各个属性值
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        // 创建BorrowInfo对象
        BorrowInfo borrowInfo = JSONObject.parseObject(line, BorrowInfo.class);
        // 调用borrowService的updateBorrow方法进行更新
        int i = borrowService.updateBorrow(borrowInfo);
        if(i==1){
            response.getWriter().write("success");
        }else {
            response.getWriter().write("error");
        }
    }

    // 根据ID删除借阅信息
    public void deleteBorrowById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要删除的借阅信息的ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        int id = Integer.parseInt(JSONObject.parseObject(line).getString("id"));
        // 调用borrowService的deleteBorrowById方法进行删除
        int i = borrowService.deleteBorrowById(id);
        if(i==1){
            response.getWriter().write("success");
        }else {
            response.getWriter().write("error");
        }
    }

    // 根据ID查询借阅信息
    public void findBorrowById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要查询的借阅信息的ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        int id = Integer.parseInt(JSONObject.parseObject(line).getString("id"));
        // 调用borrowService的findBorrowById方法进行查询
        BorrowInfo borrowInfo = borrowService.findBorrowById(id);
        if (borrowInfo != null) {
            String jsonString = JSON.toJSONString(borrowInfo);
            response.setContentType("text/json;charset=utf-8");
            response.getWriter().write(jsonString);
        }else {
            response.getWriter().write("error");
        }
    }

    // 查询所有借阅信息
    public void findAllBorrows(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 调用borrowService的findAllBorrows方法进行查询
        List<BorrowInfo> allBorrows = borrowService.findAllBorrows();
        String jsonString = JSON.toJSONString(allBorrows);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 根据用户ID查询借阅信息
    public void findBorrowsByUserId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取用户ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        int userId = Integer.parseInt(JSONObject.parseObject(line).getString("userId"));
        // 调用borrowService的findBorrowsByUserId方法进行查询
        List<BorrowInfo> borrowsByUserId = borrowService.findBorrowsByUserId(userId);
        String jsonString = JSON.toJSONString(borrowsByUserId);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 根据图书ID查询借阅信息
    public void findBorrowsByBookId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取图书ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String bookId = JSONObject.parseObject(line).getString("bookId");
        // 调用borrowService的findBorrowsByBookId方法进行查询
        List<BorrowInfo> borrowsByBookId = borrowService.findBorrowsByBookId(Long.parseLong(bookId));
        String jsonString = JSON.toJSONString(borrowsByBookId);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 根据状态查询借阅信息
    public void findBorrowsByStatus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取状态
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String status = JSONObject.parseObject(line).getString("status");
        // 调用borrowService的findBorrowsByStatus方法进行查询
        List<BorrowInfo> borrowsByStatus = borrowService.findBorrowsByStatus(Integer.parseInt(status));
        String jsonString = JSON.toJSONString(borrowsByStatus);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 条件模糊查询
    public void selectByCondition(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要查询的预约状态
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        BorrowInfo borrowInfo = JSONObject.parseObject(line,BorrowInfo.class);
        // 调用reserveService的findReservesByStatus方法进行查询
        List<BorrowInfo> list = borrowService.selectByCondition(borrowInfo);
        String jsonString = JSON.toJSONString(list);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);

    }
    public void updateStatus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String id= JSONObject.parseObject(line).getString("id");
        int i = borrowService.updateStatus(id);
        if (i==1) {
            response.getWriter().write("success");
        }else {
            response.getWriter().write("error");
        }
    }
}
