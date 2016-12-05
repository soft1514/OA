create DATABASE xiangmu;


-- 创建部门表
create table department(
deptId int(11) PRIMARY KEY AUTO_INCREMENT,-- 部门ID
deptname varchar(20) not null-- 部门名称
);


-- 创建职务表
create table duty(
dutyName varchar(20) PRIMARY KEY not null-- 职务名称
);


-- 创建员工表
create table staff(
userId int(11) PRIMARY KEY AUTO_INCREMENT,-- 员工编号
username varchar(20),-- 员工姓名
dutyName varchar(20),-- 职务
Intiem DATE,-- 入司时间
deptId int(11),-- 部门编号
sex varchar(2),-- 性别
phone int(11),-- 联系方式
CONSTRAINT staff_fk_department FOREIGN KEY(deptId)
REFERENCES department(deptId),
CONSTRAINT staff_fk_duty FOREIGN KEY(dutyName)
REFERENCES duty(dutyName)
);

-- 创建用户表
create table users(
username varchar(255) PRIMARY key,-- 用户名
password varchar(255) not null,-- 密码
userId int(11),
CONSTRAINT users_fk_staff FOREIGN KEY(userId)
REFERENCES staff(userId)
);

-- 创建考勤表
create table Attendance(
AdTime date,-- 日期
site varchar(20),-- 地点
userId int(11),-- 员工ID
CONSTRAINT Attendance_fk_staff FOREIGN KEY(userId)
REFERENCES staff(userId)-- 员工外键
);


-- 请假表
create table leavea(
userId int(11),-- 员工ID
startTiem date,-- 开始日期
stopTime date,-- 结束日期
cause varchar(200),-- 请假原因
dispose varchar(4),-- 处理情况
CONSTRAINT leave_fk_staff FOREIGN KEY(userId)
REFERENCES staff(userId)-- 员工外键
);


-- 加班表
create table overtime(
userId int(11),-- 员工ID
startTiem date,-- 开始时间
stopTime date,-- 结束时间
cause varchar(200),-- 原因
dispose varchar(4),-- 处理状态
CONSTRAINT overtime_fk_staff FOREIGN KEY(userId)
REFERENCES staff(userId)-- 员工外键
);


-- 日清表
create table Nissin(
userId int(11),-- 员工ID
fillTime date,-- 填写时间
title varchar(20),-- 标题
content varchar(200),-- 内容
PlanTomorrow varchar(200),-- 明日计划
dispose varchar(4),-- 状态
CONSTRAINT Nissin_fk_staff FOREIGN KEY(userId)
REFERENCES staff(userId)
);


-- 会议表
create table conference(
userId int(11),-- 参会人员ID
title varchar(20),-- 标题
deptId int(11),-- 部门ID
site varchar(20),-- 地点
stratTime date,-- 开始时间
topTime date,-- 结束时间
content varchar(200),-- 内容
compere int(11),-- 主持人
CONSTRAINT Aconference_fk_staff1 FOREIGN KEY(userId)
REFERENCES staff(userId),-- 员工外键
CONSTRAINT Aconference_fk_staff2 FOREIGN KEY(compere)
REFERENCES staff(userId),-- 员工外键
CONSTRAINT conference_fk_deptId FOREIGN KEY(deptId)
REFERENCES department(deptId)-- 部门外键
);