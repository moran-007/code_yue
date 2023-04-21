package com.yue.servlet;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.yue.entity.FineInfo;
import com.yue.service.FineService;
import com.yue.service.impl.FineServiceImpl;
import com.yue.util.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;

@WebServlet("/fines/*")
public class FineServlet extends BaseServlet {
    private FineService fineService = new FineServiceImpl();

    // 根据罚款ID查询罚款信息
    public void findFineById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要查询的罚款ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String id = JSONObject.parseObject(line).getString("id");
        // 调用fineService的selectFineById方法进行查询
        FineInfo fine = fineService.selectFineById(Integer.parseInt(id));
        String jsonString = JSON.toJSONString(fine);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 添加罚款信息
    public void addFine(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取FineInfo对象的各个属性值
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        // 创建FineInfo对象
        FineInfo fineInfo = JSONObject.parseObject(line, FineInfo.class);
        // 调用fineService的insertFine方法进行添加
        fineService.insertFine(fineInfo);
        response.getWriter().write("success");
    }

    // 更新罚款信息
    public void updateFine(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取FineInfo对象的各个属性值
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        // 创建FineInfo对象
        FineInfo fineInfo = JSONObject.parseObject(line, FineInfo.class);
        // 调用fineService的updateFine方法进行更新
        fineService.updateFine(fineInfo);
        response.getWriter().write("success");
    }

    // 删除罚款信息
    public void deleteFineById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要删除的罚款的ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String id = JSONObject.parseObject(line).getString("id");
        // 调用fineService的deleteFine方法进行删除
        int i = fineService.deleteFine(Integer.parseInt(id));
        if (i==1){
            response.getWriter().write("success");
        }else {
            response.getWriter().write("error");
        }
    }

    // 查询所有罚款信息
    public void findAllFines(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 调用fineService的selectAllFine方法进行查询
        List<FineInfo> fineInfos = fineService.selectAllFine();
        String jsonString = JSON.toJSONString(fineInfos);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 查询未缴纳的罚款信息
    public void findUnpaidFines(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 调用fineService的selectUnpaidFine方法进行查询
        List<FineInfo> fineInfos = fineService.selectUnpaidFine();
        String jsonString = JSON.toJSONString(fineInfos);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 查询某个用户的所有罚款信息
    public void findFinesByUserId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要查询的用户ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String userId = JSONObject.parseObject(line).getString("userId");
        // 调用fineService的selectFineByUserId方法进行查询
        List<FineInfo> fineInfos = fineService.selectFineByUserId(Integer.parseInt(userId));
        String jsonString = JSON.toJSONString(fineInfos);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 查询某个图书的所有罚款信息
    public void findFinesByBookId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要查询的图书ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String bookId = JSONObject.parseObject(line).getString("bookId");
        // 调用fineService的selectFineByBookId方法进行查询
        List<FineInfo> fineInfos = fineService.selectFineByBookId(Integer.parseInt(bookId));
        String jsonString = JSON.toJSONString(fineInfos);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 条件模糊查询
    public void selectByCondition(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要查询的预约状态
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        FineInfo fineInfo = JSONObject.parseObject(line,FineInfo.class);
        // 调用reserveService的findReservesByStatus方法进行查询
        List<FineInfo> list = fineService.selectByCondition(fineInfo);
        String jsonString = JSON.toJSONString(list);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);

    }
}

