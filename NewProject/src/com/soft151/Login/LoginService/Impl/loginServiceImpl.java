package com.soft151.Login.LoginService.Impl;

import com.soft151.Login.LoginDao.loginDao;
import com.soft151.Login.LoginService.loginService;
import com.soft151.Login.user.user;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * Created by Huangjx on 2016/12/1.
 */

@Service
public class loginServiceImpl implements loginService {

    @Resource
    private loginDao dao;

    @Override
    public boolean selectUser(String name,String pwd) {
        user user=dao.selectuser(name);
        if(name!=user.getName()||!name.equals(user.getName())){
            if(pwd!=user.getPassword()||!pwd.equals(user.getPassword())){
                return true;
            }else {
                return false;
            }
        }else {
            return false;
        }
    }
}
