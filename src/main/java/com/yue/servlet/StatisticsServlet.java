package com.yue.servlet;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.yue.entity.StatisticsInfo;
import com.yue.service.StatisticsService;
import com.yue.service.impl.StatisticsServiceImpl;
import com.yue.util.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;

@WebServlet("/statistics/*")
public class StatisticsServlet extends BaseServlet {

    private StatisticsService statisticsService = new StatisticsServiceImpl();

    // 添加统计信息
    public void addStatistics(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取StatisticsInfo对象的各个属性值
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        // 创建StatisticsInfo对象
        StatisticsInfo statisticsInfo = JSONObject.parseObject(line, StatisticsInfo.class);
        // 调用statisticsService的insertStatistics方法进行添加
        statisticsService.insertStatistics(statisticsInfo);

        response.getWriter().write("success");

    }

    // 根据统计信息ID删除统计信息
    public void deleteStatisticsById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要删除的统计信息的ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String id = JSONObject.parseObject(line).getString("id");
        // 调用statisticsService的deleteStatisticsById方法进行删除
        statisticsService.deleteStatisticsById(Integer.parseInt(id));
        response.getWriter().write("success");
    }

    // 清空所有统计信息
    public void deleteAllStatistics(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 调用statisticsService的deleteAllStatistics方法进行删除
        statisticsService.deleteAllStatistics();
        response.getWriter().write("success");
    }

    // 更新统计信息
    public void updateStatistics(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取StatisticsInfo对象的各个属性值
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        // 创建StatisticsInfo对象
        StatisticsInfo statisticsInfo = JSONObject.parseObject(line, StatisticsInfo.class);
        // 调用statisticsService的updateStatistics方法进行更新
        statisticsService.updateStatistics(statisticsInfo);
        response.getWriter().write("success");
    }

    // 根据统计信息ID查询统计信息
    public void findStatisticsById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要查询的统计信息的ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String id = JSONObject.parseObject(line).getString("id");
        // 调用statisticsService的selectStatisticsById方法进行查询
        StatisticsInfo statisticsInfo = statisticsService.selectStatisticsById(Integer.parseInt(id));
        String jsonString = JSON.toJSONString(statisticsInfo);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 查询所有统计信息
    public void findAllStatistics(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 调用statisticsService的selectAllStatistics方法进行查询
        List<StatisticsInfo> statisticsInfos = statisticsService.selectAllStatistics();
        String jsonString = JSON.toJSONString(statisticsInfos);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 根据书籍类型查询统计信息
    public void findStatisticsByType(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要查询的书籍类型
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String type = JSONObject.parseObject(line).getString("Type");
        // 调用statisticsService的selectStatisticsByType方法进行查询
        List<StatisticsInfo> statisticsInfos = statisticsService.selectStatisticsByType(type);
        String jsonString = JSON.toJSONString(statisticsInfos);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }
}
