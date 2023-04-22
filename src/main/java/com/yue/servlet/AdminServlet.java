package com.yue.servlet;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.yue.entity.AdminInfo;
import com.yue.entity.UserInfo;
import com.yue.service.AdminService;
import com.yue.service.UserService;
import com.yue.service.impl.AdminServiceImpl;
import com.yue.service.impl.UserServiceImpl;
import com.yue.util.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin/*")

public class AdminServlet extends BaseServlet {
    AdminService adminService = new AdminServiceImpl();
    UserService userService = new UserServiceImpl();
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
        List<AdminInfo> admin = adminService.adminLogin(adminInfo);

        if(admin.size() == 1){
// 3. 生成token并存入session
            HttpSession session = request.getSession();
            String token = generateToken(admin.get(0));
            session.setAttribute("adminToken", token);
            // 2. 转json
//            String jsonString = JSON.toJSONString(token);
//            response.setContentType("text/json;charset=utf-8");

            Cookie cookie = new Cookie("adminToken",token);
//            2.设置Cookie再和护短的持久化时间，如果不设置持久化时间，cookie会存储在浏览器的内存中，浏览器关闭cookie存储的信息销毁，也就是会话级别的cookie
            cookie.setMaxAge(60*60);//十分钟	---时间设置成0代表删除该cookie
            //3.为Cookie设置携带的路径，如果不设置携带路径，那么该cookie会在与他同级的资源路径中携带信息
            //cookie.setPath("/WEB16/sendCookie");//当访问sendCookie资源时才携带这个cookie
            cookie.setPath("/");//当访问WEB16下的资源时都携带这个cookie
            //cookie.setPath("/");//当访问服务器下所有的资源都携带这个cookie
            //.将cookie中存储的信息发送到客户端----头
            response.addCookie(cookie);
            response.getWriter().write("success");
            // 2. 转json
//            String jsonString = JSON.toJSONString(users);
//            response.setContentType("text/json;charset=utf-8");
//            response.getWriter().write("success");
        }else {
            request.getRequestDispatcher("/index.html").forward(request, response);
        }
    }

    /**
     * 生成token
     */
    private String generateToken(AdminInfo admin) {
        long timestamp = System.currentTimeMillis();
        String id = String.valueOf(admin.getId());
//        String password = admin.getAdminPassword();
        String token = timestamp + ":"+ id+":"+"41122" ;
        // TODO: 对token进行加密
        return token;
    }

    /**
     * 校验token是否有效
     */
    private boolean checkToken(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        String token = (String) session.getAttribute("adminToken");

        if (token == null) {
            // 未登录，重定向到登录页面
            response.sendRedirect("/login.html");
            return false;
        }

        // TODO: 对token进行解密和校验

        return true;
    }



    public void findAllByAdminId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从request中获取要删除的书籍的ID
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        int adminId = Integer.parseInt(JSONObject.parseObject(line).getString("adminId"));
        // 调用bookService的deleteBookById方法进行删除
        List<UserInfo> allByAdminId = userService.findAllByAdminId(adminId);
        if (allByAdminId != null) {
            String jsonString = JSON.toJSONString(allByAdminId);
            response.setContentType("text/json;charset=utf-8");
            response.getWriter().write(jsonString);
        }else {
            response.getWriter().write("error");
        }

    }

    /*
    * 条件查询
    */
    public void    findSunUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        UserInfo userInfo = JSONObject.parseObject(line,UserInfo.class);
        List<UserInfo> sunUser = userService.findSunUser(userInfo);
        if (sunUser != null) {
            String jsonString = JSON.toJSONString(sunUser);
            response.setContentType("text/json;charset=utf-8");
            response.getWriter().write(jsonString);
        }else {
            response.getWriter().write("error");
        }

    }
    public void updateId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        AdminInfo adminInfo = JSONObject.parseObject(line,AdminInfo.class);
        adminService.updateId(adminInfo);
        response.getWriter().write("success");

        }
    public void updatePassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        UserInfo userInfo = JSONObject.parseObject(line,UserInfo.class);
        userService.updatePassword(userInfo);
        response.getWriter().write("success");

    }

    }
