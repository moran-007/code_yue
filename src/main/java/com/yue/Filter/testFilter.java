package com.yue.Filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "testFilter",urlPatterns = "/*")
public class testFilter implements Filter {
    @Override
    public void init(FilterConfig config) throws ServletException {
    }

    @Override
    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {

        HttpServletResponse httpResponse = (HttpServletResponse) response;
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        // 允许的域名，如果是 * 表示允许所有域名跨域
        httpResponse.setHeader("Access-Control-Allow-Origin", "http://127.0.0.1:5173");
        // 允许的方法
        httpResponse.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
        // 允许的请求头
        httpResponse.setHeader("Access-Control-Allow-Headers", "Content-Type, x-requested-with, Authorization");
        // 是否允许携带 cookie，如果要携带 cookie，前端需要设置 withCredentials 为 true
        httpResponse.setHeader("Access-Control-Allow-Credentials", "true");

        String requestURI = httpRequest.getRequestURI();

        System.out.println(requestURI);
        request.setCharacterEncoding("UTF-8");

            chain.doFilter(request, response);
        }

}
