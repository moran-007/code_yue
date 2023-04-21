package com.yue.servlet;

import com.alibaba.fastjson.JSONObject;
import com.yue.entity.UserInfo;
import com.yue.service.UserService;
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

            // 3. 生成token并存入session
            HttpSession session = request.getSession();
            String token = generateToken(users.get(0));
            session.setAttribute("token", token);
            // 2. 转json
//            String jsonString = JSON.toJSONString(token);
//            response.setContentType("text/json;charset=utf-8");

            Cookie cookie = new Cookie("token",token);
//            2.设置Cookie再和护短的持久化时间，如果不设置持久化时间，cookie会存储在浏览器的内存中，浏览器关闭cookie存储的信息销毁，也就是会话级别的cookie
            cookie.setMaxAge(60*60);//十分钟	---时间设置成0代表删除该cookie
            //3.为Cookie设置携带的路径，如果不设置携带路径，那么该cookie会在与他同级的资源路径中携带信息
            //cookie.setPath("/WEB16/sendCookie");//当访问sendCookie资源时才携带这个cookie
            cookie.setPath("/");//当访问WEB16下的资源时都携带这个cookie
            //cookie.setPath("/");//当访问服务器下所有的资源都携带这个cookie
            //.将cookie中存储的信息发送到客户端----头
            response.addCookie(cookie);
            response.getWriter().write("success");
        }else {
//            request.getRequestDispatcher("/index.html").forward(request, response);
            response.getWriter().write("error");

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
        userInfo.setAdminId(JSONObject.parseObject(line).getString("adminId"));

        int register = userService.register(userInfo);
        if(register>0){
            response.getWriter().write("success");
        }else {
            response.getWriter().write("error");
        }
    }
//        public void exit(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
//
//        HttpSession session = request.getSession();
//        session.invalidate();
////        String Spasswd = String.valueOf(session.getAttribute("Spasswd"));
//        response.getWriter().write("success");
//
//    }

    public void updateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        UserInfo userInfo = JSONObject.parseObject(line,UserInfo.class);
        int i = userService.updateUser(userInfo);
        if(i==1) {
            response.getWriter().write("success");
        }else {
            response.getWriter().write("error");
        }
    }

    public void updateMyPassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BufferedReader reader = request.getReader();
        String line = reader.readLine();
        UserInfo userInfo = JSONObject.parseObject(line,UserInfo.class);
        int i = userService.updateMyPassword(userInfo);
        if(i==1) {
            response.getWriter().write("success");
        }else {
            response.getWriter().write("error");
        }
    }


    /**
     * 退出登录
     */
    public void exit(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        HttpSession session = request.getSession();
        session.invalidate();
        response.getWriter().write("success");
    }

    /**
     * 生成token
     */
    private String generateToken(UserInfo user) {
        long timestamp = System.currentTimeMillis();
        String username = user.getUsername();
        String password = user.getPassword();
        String token = timestamp + ":" + password;
        // TODO: 对token进行加密
        return token;
    }

    /**
     * 校验token是否有效
     */
    private boolean checkToken(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        String token = (String) session.getAttribute("token");

        if (token == null) {
            // 未登录，重定向到登录页面
            response.sendRedirect("/login.html");
            return false;
        }

        // TODO: 对token进行解密和校验

        return true;
    }


}

