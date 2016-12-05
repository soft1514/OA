package com.soft151.Login.LoginController;

import com.soft151.Login.LoginService.loginService;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

/**
 * Created by Huangjx on 2016/12/1.
 */
@Controller
public class controller {

    @Resource
    private loginService loginservice;

    @RequestMapping(value = "/Login", method = RequestMethod.POST)
    public  String select(HttpServletRequest request) {
        HttpSession session = request.getSession();
        String name = request.getParameter("username");
        String pwd = request.getParameter("pwd");
        System.out.println(request.getRemoteAddr());
        boolean falg=loginservice.selectUser(name,pwd);
        System.out.println(falg);
        return "home";
    }
}