package com.soft151.Login.Filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Huangjx on 2016/12/2.
 */
public class Loginfilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse rsp, FilterChain fl) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) rsp;
        //获取当前的请求页面
        String uri = request.getRequestURI();
        //url表示         //项目名
        String url = request.getContextPath();
        if (!uri.equals(url) && !uri.equals(url + "/login.jsp")
                    && !uri.equals(url + "/Login")) {
                Object user = request.getSession().getAttribute("name");
                if (user == null || user.equals("")) {
                    response.sendRedirect("login.jsp");
                }
            }
            fl.doFilter(req, rsp);
        }

    @Override
    public void destroy() {

    }
}
