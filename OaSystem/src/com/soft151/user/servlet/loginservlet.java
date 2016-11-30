package com.soft151.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//登录校验
public class loginservlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	String name=	request.getParameter("username");
	 String pwd=	request.getParameter("pwd");
		if(name.equals("123")&&pwd.equals("123")){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
	}

	


}
