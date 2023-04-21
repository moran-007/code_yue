package com.yue.servlet;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.yue.entity.ReserveInfo;
import com.yue.service.ReserveService;
import com.yue.service.impl.ReserveServiceImpl;
import com.yue.util.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;

@WebServlet("/reserves/*")
public class ReserveServlet extends BaseServlet {


    private ReserveService reserveService = new ReserveServiceImpl();

    // 根据id查询预约
    public void selectReserveById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要查询的预约的ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String id = JSONObject.parseObject(line).getString("id");
        // 调用reserveService的selectReserveById方法进行查询
        ReserveInfo reserveInfo = reserveService.selectReserveById(Integer.parseInt(id));
        response.getWriter().write("success");
    }
    // 添加预约
    public void addReserve(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取ReserveInfo对象的各个属性值.
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        // 创建ReserveInfo对象
        ReserveInfo reserveInfo = JSONObject.parseObject(line, ReserveInfo.class);
        // 调用reserveService的insertReserve方法进行添加
        reserveService.insertReserve(reserveInfo);
        response.getWriter().write("success");
    }

    // 更新预约
    public void updateReserve(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取ReserveInfo对象的各个属性值
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        // 创建ReserveInfo对象
        ReserveInfo reserveInfo = JSONObject.parseObject(line, ReserveInfo.class);
        // 调用reserveService的updateReserve方法进行更新
        reserveService.updateReserve(reserveInfo);
        response.getWriter().write("success");
    }

    // 更新预约状态
    public void updateStatus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String id= JSONObject.parseObject(line).getString("id");
        int i = reserveService.updateStatus(id);
        if (i==1) {
            response.getWriter().write("success");
        }else {
            response.getWriter().write("error");
        }
    }


    // 根据预删除预约
    public void deleteReserve(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要删除的预约的ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String id = JSONObject.parseObject(line).getString("id");
        // 调用reserveService的deleteReserveById方法进行删除
        reserveService.deleteReserve(Integer.parseInt(id));
        response.getWriter().write("success");
    }

    // 查询所有预约
    public void selectAllReserve(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要删除预约的书籍的ID
        List<ReserveInfo> reserveInfos = reserveService.selectAllReserve();
        String jsonString = JSON.toJSONString(reserveInfos);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }


    // 根据用户ID查询预约列表
    public void findReservesByUserId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要查询预约的用户的ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String userId = JSONObject.parseObject(line).getString("userId");
        // 调用reserveService的findReservesByUserId方法进行查询
        List<ReserveInfo> reserveInfos = reserveService.selectReserveByUserId(Integer.parseInt(userId));
        String jsonString = JSON.toJSONString(reserveInfos);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 根据图书ID查询预约列表
    public void findReservesByBookId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要查询预约的书籍的ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String bookId = JSONObject.parseObject(line).getString("bookId");
        // 调用reserveService的findReservesByBookId方法进行查询
        List<ReserveInfo> reserveInfos = reserveService.selectReserveByBookId(Integer.parseInt(bookId));
        String jsonString = JSON.toJSONString(reserveInfos);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 根据预约状态查询预约列表
    public void findReservesByStatus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要查询的预约状态
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String status = JSONObject.parseObject(line).getString("status");
        // 调用reserveService的findReservesByStatus方法进行查询
        List<ReserveInfo> reserveInfos = reserveService.selectReserveByStatus(Integer.parseInt(status));
        String jsonString = JSON.toJSONString(reserveInfos);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }
    public void selectByCondition(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要查询的预约状态
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        ReserveInfo reserveInfo = JSONObject.parseObject(line,ReserveInfo.class);
        // 调用reserveService的findReservesByStatus方法进行查询
        List<ReserveInfo> reserveInfos = reserveService.selectByCondition(reserveInfo);
        String jsonString = JSON.toJSONString(reserveInfos);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);

    }
}
