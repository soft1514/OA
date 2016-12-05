package com.soft151.Login.LoginDao.Impl;


import com.soft151.Login.LoginDao.AutowireDaoSupport;
import com.soft151.Login.LoginDao.loginDao;
import com.soft151.Login.user.user;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by Huangjx on 2016/12/1.
 */
@Repository
public class loginDaoImpl extends AutowireDaoSupport implements loginDao {

    @Override
    public user selectuser(String name) {
        List list=getJdbcTemplate().query("select * from users where username=?", new RowMapper<Object>() {
            @Override
            public Object mapRow(ResultSet rs, int i) throws SQLException {
                user user=new user();
                user.setName(rs.getString(1));
                user.setPassword(rs.getString(2));
                return user;
            }
        }, name);
        return (user)list.get(0);
    }
}
