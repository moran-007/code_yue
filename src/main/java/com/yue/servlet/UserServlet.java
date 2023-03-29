package com.yue.servlet;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.yue.entity.UserInfo;
import com.yue.service.UserService;
import com.yue.service.impl.UserServiceImpl;
import com.yue.util.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;


@WebServlet("/User/*")
public class UserServlet extends BaseServlet {
    UserService userService = new UserServiceImpl();

    /*
    * 用户登录
    */
    public void UserLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BufferedReader reader = request.getReader();
        String line = reader.readLine();


        // 1. 获取数据
        String phone = JSONObject.parseObject(line).getString("phone");
        String password = JSONObject.parseObject(line).getString("password");

        // 2. 调用方法
        List<UserInfo> users = userService.login(phone, password);

        if(users.size() == 1){

            // 2. 转json
            String jsonString = JSON.toJSONString(users);
            response.setContentType("text/json;charset=utf-8");
            response.getWriter().write("success");
        }else {
            request.getRequestDispatcher("/index.html").forward(request, response);
        }
    }



    /**
     * 注册用户
     */
    public void registerUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        UserInfo userInfo = new UserInfo();
        userInfo.setUsername(JSONObject.parseObject(line).getString("username"));
        userInfo.setPhone(JSONObject.parseObject(line).getString("phone"));
        userInfo.setEmail(JSONObject.parseObject(line).getString("email"));
        userInfo.setPassword(JSONObject.parseObject(line).getString("password"));

        int register = userService.register(userInfo);
        if(register>0){
            response.getWriter().write("success");
        }else {
            response.getWriter().write("error");
        }
    }
        public void exit(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {

        HttpSession session = request.getSession();
        session.invalidate();
//        String Spasswd = String.valueOf(session.getAttribute("Spasswd"));
        response.getWriter().write("success");

    }
}
