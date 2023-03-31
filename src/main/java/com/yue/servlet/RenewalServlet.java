package com.yue.servlet;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.yue.entity.RenewalInfo;
import com.yue.service.RenewalService;
import com.yue.service.impl.RenewalServiceImpl;
import com.yue.util.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;

@WebServlet("/renewals/*")
public class RenewalServlet extends BaseServlet {

    private RenewalService renewalService = new RenewalServiceImpl();

    // 根据续借ID查询续借信息
    public void selectRenewalById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要查询的续借信息的ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String id = JSONObject.parseObject(line).getString("id");
        // 调用renewalService的selectRenewalById方法进行查询
        RenewalInfo renewalInfo = renewalService.selectRenewalById(Integer.parseInt(id));
        String jsonString = JSON.toJSONString(renewalInfo);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 插入新的续借信息
    public void insertRenewal(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取RenewalInfo对象的各个属性值
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        // 创建RenewalInfo对象
        RenewalInfo renewalInfo = JSONObject.parseObject(line, RenewalInfo.class);
        // 调用renewalService的insertRenewal方法进行插入
        int i = renewalService.insertRenewal(renewalInfo);
        if (i==1){
            response.getWriter().write("success");
        }else {
            response.getWriter().write("error");
        }

    }

    // 更新续借信息
    public void updateRenewal(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取RenewalInfo对象的各个属性值
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        // 创建RenewalInfo对象
        RenewalInfo renewalInfo = JSONObject.parseObject(line, RenewalInfo.class);
        // 调用renewalService的updateRenewal方法进行更新
        renewalService.updateRenewal(renewalInfo);
        response.getWriter().write("success");
    }

    // 删除续借信息
    public void deleteRenewal(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要删除的续借信息的ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String id = JSONObject.parseObject(line).getString("id");
        // 调用renewalService的deleteRenewal方法进行删除
        renewalService.deleteRenewal(Integer.parseInt(id));
        response.getWriter().write("success");
    }

    // 查询所有续借信息
    public void selectAllRenewal(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 调用renewalService的selectAllRenewal方法进行查询
        List<RenewalInfo> renewalInfos = renewalService.selectAllRenewal();
        String jsonString = JSON.toJSONString(renewalInfos);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 根据用户ID查询续借信息
    public void selectRenewalByUserId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要查询续借信息的用户ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String userId = JSONObject.parseObject(line).getString("userId");
        // 调用renewalService的selectRenewalByUserId方法进行查询
        List<RenewalInfo> renewalInfos = renewalService.selectRenewalByUserId(Integer.parseInt(userId));
        String jsonString = JSON.toJSONString(renewalInfos);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 根据审核状态查询续借信息
    public void selectRenewalByStatus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要查询的审核状态
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String status = JSONObject.parseObject(line).getString("status");
        // 调用renewalService的selectRenewalByStatus方法进行查询
        List<RenewalInfo> renewalInfos = renewalService.selectRenewalByStatus(Integer.parseInt(status));
        String jsonString = JSON.toJSONString(renewalInfos);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    // 根据管理员ID查询续借信息
    public void selectRenewalByAdminId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要查询续借信息的管理员ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        String adminId = JSONObject.parseObject(line).getString("adminId");
        // 调用renewalService的selectRenewalByAdminId方法进行查询
        List<RenewalInfo> renewalInfos = renewalService.selectRenewalByAdminId(Integer.parseInt(adminId));
        String jsonString = JSON.toJSONString(renewalInfos);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }
}
