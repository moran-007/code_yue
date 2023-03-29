package com.yue.servlet;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.yue.entity.AdminInfo;
import com.yue.entity.UserInfo;
import com.yue.service.AdminService;
import com.yue.service.impl.AdminServiceImpl;
import com.yue.util.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin/*")

public class AdminServlet extends BaseServlet {
    AdminService adminService = new AdminServiceImpl();
    /*
     * 用户登录
     */
    public void UserLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BufferedReader reader = request.getReader();
        String line = reader.readLine();


        // 1. 获取数据
//        String username =;
//        String password = ;
        AdminInfo adminInfo = new AdminInfo();
        adminInfo.setAdminName( JSONObject.parseObject(line).getString("phone"));
        adminInfo.setAdminPassword(JSONObject.parseObject(line).getString("password"));
        // 2. 调用方法
        List<UserInfo> users = adminService.adminLogin(adminInfo);

        if(users.size() == 1){

            // 2. 转json
            String jsonString = JSON.toJSONString(users);
            response.setContentType("text/json;charset=utf-8");
            response.getWriter().write("success");
        }else {
            request.getRequestDispatcher("/index.html").forward(request, response);
        }
    }
}
