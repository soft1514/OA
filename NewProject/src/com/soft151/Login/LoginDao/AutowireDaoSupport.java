package com.soft151.Login.LoginDao;

import javax.sql.DataSource;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class AutowireDaoSupport extends JdbcDaoSupport
		implements ApplicationContextAware {

	@Override
	public void setApplicationContext(ApplicationContext ctx) throws BeansException {
		DataSource dataSource = ctx.getBean(DataSource.class);
		setDataSource(dataSource);
	}

}
